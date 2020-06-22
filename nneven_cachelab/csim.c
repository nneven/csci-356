#include <getopt.h>  // getopt, optarg
#include <stdlib.h>  // exit, atoi, malloc, free
#include <stdio.h>   // printf, fprintf, stderr, fopen, fclose, FILE
#include <limits.h>  // ULONG_MAX
#include <string.h>  // strcmp, strerror
#include <errno.h>   // errno

/* fast base-2 integer logarithm */
#define INT_LOG2(x) (31 - __builtin_clz(x))
#define NOT_POWER2(x) (__builtin_clz(x) + __builtin_ctz(x) != 31)

/* tag_bits = ADDRESS_LENGTH - set_bits - block_bits */
#define ADDRESS_LENGTH 64

/**
 * Print program usage (no need to modify).
 */
static void print_usage() {
    printf("Usage: csim [-hv] -S <num> -K <num> -B <num> -p <policy> -t <file>\n");
    printf("Options:\n");
    printf("  -h           Print this help message.\n");
    printf("  -v           Optional verbose flag.\n");
    printf("  -S <num>     Number of sets.           (must be > 0)\n");
    printf("  -K <num>     Number of lines per set.  (must be > 0)\n");
    printf("  -B <num>     Number of bytes per line. (must be > 0)\n");
    printf("  -p <policy>  Eviction policy. (one of 'FIFO', 'LRU')\n");
    printf("  -t <file>    Trace file.\n\n");
    printf("Examples:\n");
    printf("  $ ./csim    -S 16  -K 1 -B 16 -p LRU -t traces/yi.trace\n");
    printf("  $ ./csim -v -S 256 -K 2 -B 16 -p LRU -t traces/yi.trace\n");
}

/* Parameters set by command-line args (no need to modify) */
int verbose = 0;   // print trace if 1
int S = 0;         // number of sets
int K = 0;         // lines per set
int B = 0;         // bytes per line

// ADDED
int s = 0;
int b = 0;

typedef enum { FIFO = 1, LRU = 2 } Policy;
Policy policy;     // 0 (undefined) by default

FILE *trace_fp = NULL;

/**
 * Parse input arguments and set verbose, S, K, B, policy, trace_fp.
 *
 * TODO: Finish implementation
 */
static void parse_arguments(int argc, char **argv) {
    char c;
    while ((c = getopt(argc, argv, "S:K:B:p:t:vh")) != -1) {
        switch(c) {
            case 'S':
                S = atoi(optarg);
                if (NOT_POWER2(S)) {
                    fprintf(stderr, "ERROR: S must be a power of 2\n");
                    exit(1);
                }
                break;
            case 'K':
                // TODO
                K = atoi(optarg);
                break;
            case 'B':
                // TODO
                B = atoi(optarg);
                break;
            case 'p':
                if (!strcmp(optarg, "FIFO")) {
                    policy = FIFO;
                }
                // TODO: parse LRU, exit with error for unknown policy
                else if (!strcmp(optarg, "LRU")) {
                    policy = LRU;
                }
                break;
            case 't':
                // TODO: open file trace_fp for reading
                trace_fp = fopen(optarg, "r");
                break;
            case 'v':
                // TODO
                verbose = 1;
                break;
            case 'h':
                // TODO
                print_usage();
                exit(0);
            default:
                print_usage();
                exit(1);
        }
    }

    /* Make sure that all required command line args were specified and valid */
    if (S <= 0 || K <= 0 || B <= 0 || policy == 0 || !trace_fp) {
        printf("ERROR: Negative or missing command line arguments\n");
        print_usage();
        if (trace_fp) {
            fclose(trace_fp);
        }
        exit(1);
    }

    /* Other setup if needed */
    s = INT_LOG2(S);
    b = INT_LOG2(B);
}

/**
 * Cache data structures
 * TODO: Define your own!
 */

typedef struct {
    int lru;
    int time;
    int valid;
    unsigned long long tag;
} cLine;

typedef cLine* cSet;
typedef cSet* cCache;
cCache cache;
int cTime = 0;

/**
 * Allocate cache data structures.
 *
 * This function dynamically allocates (with malloc) data structures for each of
 * the `S` sets and `K` lines per set.
 *
 * TODO: Implement
 */
static void allocate_cache() {
    cache = (cSet*)malloc(sizeof(cSet) * S);
    for (int i = 0; i < S; i++) {
        cache[i] = (cLine*)malloc(sizeof(cLine) * K);
        for (int j = 0; j < K; j++) {
            cache[i][j].lru = 0;
            cache[i][j].tag = 0;
            cache[i][j].time = 0;
            cache[i][j].valid = 0;
        }
    }
}

/**
 * Deallocate cache data structures.
 *
 * This function deallocates (with free) the cache data structures of each
 * set and line.
 *
 * TODO: Implement
 */
static void free_cache() {
    for (int i = 0; i < S; i++) {
        free(cache[i]);
    }
    free(cache);
}

/* Counters used to record cache statistics */
int hit_count      = 0;
int miss_count     = 0;
int eviction_count = 0;

/**
 * Simulate a memory access.
 *
 * If the line is already in the cache, increase `hit_count`; otherwise,
 * increase `miss_count`; increase `eviction_count` if another line must be
 * evicted. This function also updates the metadata used to implement eviction
 * policies (LRU, FIFO).
 *
 * TODO: Implement
 */
static void access_data(unsigned long address) {
    // printf("Access to %016lx\n", address);
    
    unsigned long long setIndex = 0;
    if(s) {
        setIndex = address << (ADDRESS_LENGTH - (b + s));
        setIndex = setIndex >> (ADDRESS_LENGTH - (b + s));
    }

    cLine* set = cache[setIndex >> b];
    cLine* newSet = set;

    for(int i = K - 1; i >= 0; i--) {
        if(set[i].valid) {
            if (set[i].tag == (address >> b >> s)) {
                hit_count++;
                set[i].lru = cTime;
                return;
            }
        } else {
            miss_count++;
            set[i].valid = 1;
            set[i].lru = cTime;
            set[i].time = set[i].lru;
            set[i].tag = address >> b >> s;
            return;
        }
    }

    miss_count++;
    eviction_count++;

    for(int i = K - 1; i >= 0; i--) {
        if(policy != FIFO) {
            if (newSet->lru > set[i].lru) newSet = cache[setIndex >> b] + i;
        } else {
            if (newSet->time > set[i].time) newSet = cache[setIndex >> b] + i;
        }
    }
    
    newSet->lru = cTime;
    newSet->time = newSet->lru;
    newSet->tag = address >> b >> s;
}

/**
 * Replay the input trace.
 *
 * This function:
 * - reads lines (e.g., using fgets) from the file handle `trace_fp` (a global variable)
 * - skips lines not starting with ` S`, ` L` or ` M`
 * - parses the memory address (unsigned long, in hex) and len (unsigned int, in decimal)
 *   from each input line
 * - calls `access_data(address)` for each access to a cache line
 *
 * TODO: Implement
 */
static void replay_trace() {
    // access_data(0);
    
    int size;
    unsigned long long address;

    while(1) {

        if (feof(trace_fp)) break;

        cTime = cTime + 1;
        char result = fgetc(trace_fp);
        if(result != EOF) {
            if(result != ' ') {
                fscanf(trace_fp, " %11llx,%u", &address, &size);
                result = fgetc(trace_fp);
                continue;
            }
        } else return;

        fscanf(trace_fp, "%c %11llx, %u", &result, &address, &size);

        char end = 0;
        for (int i = 0; i < ADDRESS_LENGTH; i++) {
            if (end == '\n') break;
            if (end == EOF) break;
            else end = fgetc(trace_fp);
        }

        if(result == 'M' || result == 'L' || result == 'S') {
            access_data(address);
            if (result == 'M') hit_count++;
        }

        while(1) {
            if(address / B >= (address + size - 1) / B) break;
            if(size) {
                size = size - B;
                address = address + B;
                if(result == 'M') {
                    hit_count++;
                    access_data(address);
                } else access_data(address); 
            } else break;
        }
    }
}

/**
 * Print cache statistics (DO NOT MODIFY).
 */
static void print_summary(int hits, int misses, int evictions) {
    printf("hits:%d misses:%d evictions:%d\n", hits, misses, evictions);
}

int main(int argc, char **argv) {
    parse_arguments(argc, argv);  // set global variables used by simulation
    allocate_cache();             // allocate data structures of cache
    replay_trace();               // simulate the trace and update counts
    free_cache();                 // deallocate data structures of cache
    fclose(trace_fp);             // close trace file
    print_summary(hit_count, miss_count, eviction_count);  // print counts
    return 0;
}
