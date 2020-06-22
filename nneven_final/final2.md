# CS356 Final (Tue May 12th, 2020 at 8am PDT)

## Spectre and Meltdown Attacks

[5/9 points] Describe:
1. How these attacks overcome memory protections to steal data. In particular:
  - Which security mechanisms prevent a process from reading data that belongs
    to other processes or to the OS?
  - How is data leaked in Spectre/Meltdown?
  - Which features/elements of modern CPUs are exploited during these attacks?
2. Discuss the differences between Spectre and Meltdown.

```
1) KASLR (KAISER) and precenting speculative execution are security mechanisms used. 
Meltdown uses side-channel information leaked by out-of-order execution to read kernel virtual memory.
Spectre locates/introduces a sequence of instructions which acts as a covert channel transmitter, leaking memory or register contents. Tricks the CPU into executing the instructions and retrieves information from the covert channel.
The kernel and caches of a CPU are exploited during these attacks.

2) Meltdown does not mistrain branch prediction.
Meltdown bypasses memory prediction between the userspace and kernel.
Spectre makes the CPU jump to the wrong place and run instructions to leak information.
```



## Static and Dynamic Libraries

[4/4 points] Explain how static and dynamic C libraries work in Linux,
highlighting the advantages/disadvantages of each approach.
(No need to provide code or command-line examples.)

```
Libraries allow us to compile all possible object files together.
Static libaries need to relink all executables if code is changed. It also creates multiple copies of code (wasting memory) if there are multiple running programs against the library.
Dynamic libraries don't duplicate common code in memory and allow libraries to be updated without needing to recompile programs. It works by NOT hardcoding the addresses of functions/data but rather using levels of indirection to lookup the code at runtime.
```



## Static and Dynamic Scheduling

[3/4 points] Explain how superscalar execution is achieved by VLIW processors with
static scheduling and by processors with dynamic scheduling, comparing the two
approaches.

```
Static scheduling processors recompile code and rely on the compiler to safely order instructions that can run in parallel.
Dynamic scheduling processors build the hardware that enables reordering of instructions on the fly.
```



## Integer Numbers

Consider the 8-bit sequence "10110100":

[2/2 points] What is the value assuming an 8-bit *unsigned* integer
           encoding?

```
180
```

[2/2 points] What is the value assuming an 8-bit *signed* integer
           encoding?

```
-76
```



## Floating-Point Numbers

Assume a 12-bit floating-point representation
(1 sign bit, 5 exponent bits excess-15, and 6 fraction bits).

[4/4 points] Then, the sequence 0 10010 001100 (a 12-bit FP) encodes the
           decimal number:

```
9.5
```



## Assembly Operations

```
--------- REGISTERS --------
%rax = 0x1122 3344 4455 5566
%rbx = 0xFFFF FFFF FFFF FFFF
%rcx = 0x0000 0000 0000 2008
%rdx = 0xFFFF FF00 FF00 0042

-- MEMORY --- ADDR
C350 1234 @ M[200C]
C4C4 2020 @ M[2008]
4242 CCDD @ M[2004]
0102 0304 @ M[2000]
```

Given the values above for registers/memory, what is the effect of the following
instructions on `%rdx`? (Consider each instruction from the same initial state.)

[2/2 points] The instruction `movswl 2(%rcx),%edx` will results in `%rdx` equal to

```
0000 0000 FFFF C4C4
```

[2/2 points] The instruction `leaq -3(%rax,%rbx,4),%rdx` will results in `%rdx` equal to

```
1122 3344 4455 555F
```

[2/2 points] The instruction `addw $0xFFFF,%dx` will results in `%rdx` equal to

```
FFFF FF00 FF00 0041
```

[1/2 points] The instruction `andl %eax,%edx` will results in `%rdx` equal to

```
FFFF FF00 4400 0042
```



## Addressing: TLB, Page Table, Caches

Consider a processor with:
- 22-bit physical addresses space
- 21-bit virtual addresses space
- page size of 256 bytes
- single-level page table using 16 bytes per entry
- a TLB with 80 entries and 16 sets
- a cache with 8 ways, blocks of 64 bytes, size of 2k bytes

[2/2 points] What is the size of each page table?

```
2^13 * 2^4 = 2^17 bytes
```

[2/2 points] What is the number of bits used as TLB tag?

```
13 - 4 = 9 bits
```

[2/2 points] What is the number of bits used as cache tag?

```
22 - 2 - 6 = 14 bits
```

[2/2 points] If the hit rate is 0.8, the hit time 30 ns, the miss
           penalty 200 ns, what is the cache average access time?

```
30 + (0.2 * 200) = 70 ns
```



## Caches: Data Access

Consider a processor with:
- 24-bit physical address space
- 2-way set-associative cache with 16 sets
- 256-byte lines

Assume the following values for the cache metadata:

```
           WAY_0      WAY_1      
           V  TAG     V  TAG     
           =========  =========  
  SET_0    1  0xB68   1  0x192   
  SET_1    1  0x97F   1  0x987   
  SET_2    1  0x952   1  0x955   
  SET_3    1  0xB92   0  0x3BC   
  SET_4    0  0x4CA   1  0x037   
  SET_5    0  0x758   1  0x9FE   
  SET_6    0  0xD78   1  0x3F2   
  SET_7    1  0x96D   1  0x074   
  SET_8    1  0x8F4   1  0xBE4   
  SET_9    1  0x16A   1  0x221   
  SET_10   1  0xA55   1  0x1A4   
  SET_11   0  0xF4B   1  0x74B   
  SET_12   0  0x31E   1  0x863   
  SET_13   0  0x633   0  0x02D   
  SET_14   1  0x07C   0  0xBDD   
  SET_15   1  0x7D5   1  0x643   
```

[2/2 points] An access to 0x31EC26 will result in a

```
( ) hit
(X) miss and no eviction
( ) miss and eviction
```

[2/2 points] An access to 0x3EC8B1 will result in a

```
( ) hit
( ) miss and no eviction
(X) miss and eviction
```

[2/2 points] An access to 0x6E6FBB will result in a

```
( ) hit
( ) miss and no eviction
(X) miss and eviction
```



## Memory Allocation

Assume an implicit free list implementation with the state of the heap shown
below, where "x,y" means that:
- the header/footer size field is set to x
- the allocated bit is set to y

Payload alignment is 8 bytes, initial padding is 4 bytes; consider each question
from the same initial state of the heap.

```
Address: 0    4    8    12   16   20   24   28   32   36   40   44   48
Memory:  | 0,0| 8,1| 8,1|24,1|    |    |    |    |24,1|16,0|    |    |16,0|

Address: 52   56   60   64   68   72   76   80   84   88   92   96   100
Memory:  |16,1|    |    |16,1|32,0|    |    |    |    |    |    |32,0| 0,1|
```

[2/2 points] The largest n such that malloc(n) can be satisfied is

```
24
```

[2/2 points] Assuming best-fit placement, malloc(8) would return address

```
40
```

[2/2 points] Assuming best-fit placement and immediate coalescing, after
           free(16), a call to malloc(1) would return address

```
72
```

[0/2 points] Assuming best-fit placement and immediate coalescing, after
           free(56) and malloc(25), a call to malloc(4) would return address

```
76
```



## Out-of-Order Dynamic Scheduling

In the following sequence of instructions, assume that the first `ld` stalls due
to a cache miss and that the miss latency is longer than the execution time of
the entire trace.

Assuming an out-of-order, dynamically-scheduled processor (that performs
automatic register renaming), which instructions in the sequence would be
allowed to execute (i.e., are independent) and which instructions would need to
stall due to the `ld` miss?

When `ld 0(%rdi),%rax` has a miss:

[1/1 point]  `addq %rdx,%rcx` will `(X) Execute  ( ) Stall`

[1/1 point]  `addq %rax,%rbx` will `( ) Execute  (X) Stall`

[1/1 point]  `addq %rbx,%rcx` will `( ) Execute  (X) Stall`

[1/1 point]  `addq %rdi,%rdx` will `(X) Execute  ( ) Stall`

[-1/1 point]  `addq %rdx,%rcx` will `(X) Execute  ( ) Stall`

(-1 point for wrong answers)



## Loop Unrolling and Register Renaming

Unroll the body of the following loop for 1 additional iteration (2 in total);
to resolve hazards, use registers %r8d, %r9d, ..., %r13d for renaming.

```
combine4:
    movl $0,%eax
L1: jge %rdi,%rsi,L2
    ld 0(%rdi),%ebx
    ld 4(%rdi),%ecx
    ld 8(%rdi),%edx
    ld 12(%rdi),%ebp
    addl %ebx,%ecx
    addl %edx,%ebp
    addl %ecx,%eax
    subl %ebp,%eax
    addq $16,%rdi
    jmp L1
L2: st %eax,0(%rsi)
```

[8/8 points] Fill in the missing parts of the unrolled loop:

```
combine4:
    movl $0,%eax
L1: jge %rdi,%rsi,L2
    ld 0(%rdi),%ebx
    ld 4(%rdi),%ecx
    ld 8(%rdi),%edx
    ld 12(%rdi),%ebp
    addl %ebx,%ecx
    addl %edx,%ebp
    addl %ecx,%eax
    subl %ebp,%eax
    ld 16(%rdi),%r8d
    ld 20(%rdi),%r9d
    ld 24(%rdi),%r10d
    ld 28(%rdi),%r11d
    addl %r8d,%r9d
    addl %r10d,%r11d
    addl %r9d,%eax
    subl %r11d,%eax
    addq 32,%rdi
    jmp L1
L2: st %eax,0(%rsi)
```



## Static Scheduling

Schedule the given code for the 2-way VLIW (static multiple issue) CPU presented
in class (1 ALU/branch slot and 1 load/store slot) to achieve the best IPC when:
(1) increments of %rdi, %rsi are in the first 2 cycles; (2) other instructions
can be reordered; (3) 1-cycle latency is needed after ld.

```
L1:
  ld 0(%rdi),%rax
  ld 0(%rsi),%rbx
  andq %rax,%rbx
  ld 8(%rdi),%rcx
  ld 8(%rsi),%rdx
  andq %rcx,%rdx
  subq %rbx,%rdx
  st %rdx,16(%rsi)

  ld 16(%rdi),%r8
  ld 24(%rsi),%r9
  andq %r8,%r9
  ld 24(%rdi),%r10
  ld 32(%rsi),%r11
  andq %r10,%r11
  subq %r9,%r11
  st %r11,40(%rsi)

  addq $32,%rdi
  addq $48,%rsi
  jne %rdi,%rbp,L1
```

[13/14 points] The schedule with best IPC is:

```
======== ALU / Branch ======== | ======== Load / Store ========
addq $32,%rdi                  | ld 0(%rdi),%rax
addq $48,%rsi                  | ld 0(%rsi),%rbx
                               | ld -24(%rdi),%rcx
                               | ld -40(%rsi),%rdx
andq %rax,%rbx                 | ld -16(%rdi),%r8
andq %rcx,%rdx                 | ld -24(%rsi),%r9
subq %rbx,%rdx                 | ld -8(%rdi),%r10
                               | ld -16(%rsi),%r11
andq %r8,%r9.                  |
andq %r10,%r11                 | st %rdx,-32(%rsi)
subq %r9,%r11                  | st %r11,-8(%rsi)
jne %rdi,%rbp,L1               |
```



## Linking Symbols

Consider the following C file:

```
static int x = 1;
extern int y = 2;
int z = 3;
int q;

int find_index(int key, int *array);

struct record {
  char name[10];
  int age;
};

int update_counters(int a) {
  int b = a + x;
  x += b;
  y += b;
  z += b;
  q += b;
}

static int find1(int *array) {
  return find_index(1, array);
}
```

[2/2 points] The global strong symbols are: `z, update_counters`

[2/2 points] The global weak symbols are: `q`

[2/2 points] The local symbols are: `x, find1`

[2/2 points] The external symbols are: `y, find_index`



## Assembly to C translation

[12/15 points] Fill in the blanks of the C source file given its x86-64 assembly.
            (sete %reg writes the zero flag ZF in the register %reg)

```
search:                         |  struct item {
        pushq   %r12            |      struct item * l;
        pushq   %rbp            |      struct item * r;
        pushq   %rbx            |      int key;
        movl    %esi, %ebp      |      short value;
        movl    %edx, %r12d     |  };
        movq    %rcx, %rsi      |
        movl    16(%rcx), %eax  |  struct item *select(int key, struct item *p);
        cmpl    %edi, %eax      |
        sete    %cl             |
        cmpl    $42, %eax       |  short search(int key, int lo, int hi,
        sete    %dl             |              struct item *p) {
        testb   %dl, %cl        |
        jne     .L7             |      int x = item->key;
        movl    %edi, %ebx      |
        cmpl    %ebp, %eax      |      if (x == key || x == 42) {
        jl      .L8             |
        cmpl    %r12d, %eax     |          return (item->value + 42) - 7;
        jle     .L5             |
        movq    (%rsi), %rcx    |      } else if (x < lo) {
        movl    %r12d, %edx     |
        movl    %ebp, %esi      |          return search(key, lo, hi, p->r);
        call    search          |
        jmp     .L1             |      } else if (x > hi) {
.L7:                            |
        movswl  20(%rsi), %eax  |          return search(key, lo, hi, p->l);
        addl    $42, %eax       |
        andl    $-7, %eax       |      } else {
.L1:                            |
        popq    %rbx            |          struct item *newp = select(key, p);
        popq    %rbp            |          return search(key, lo+2, hi-2, newp);
        popq    %r12            |
        ret                     |      }
.L8:                            |  }
        movq    8(%rsi), %rcx   |
        movl    %r12d, %edx     |
        movl    %ebp, %esi      |
        call    search          |
        jmp     .L1             |
.L5:                            |
        call    select@PLT      |
        movq    %rax, %rcx      |
        leal    -2(%r12), %edx  |
        leal    2(%rbp), %esi   |
        movl    %ebx, %edi      |
        call    search          |
        jmp     .L1             |

```





# Solutions 

## Problem 1

1. Operation

- Virtual Memory: a process can access only physical memory frames
  where its virtual pages are stored (this is enforced during address
  translation). The use of a distinct page table for each process
  allows keeping virtual address spaces separate in the physical
  memory.

- Spectre/Meltdown leak data by (1) performing illegal memory reads,
  (2) using the data as a memory address before an exception is raised
  due to the illegal memory access, (3) recovering the data by
  checking which memory addresses are faster to read.

- Out-of-order execution and speculative execution are exploited to
  perform illegal reads; caches are used to create a side-channel and
  leak data.

2. Differences

- Meltdown bypasses privileged-mode isolation to read the entire
  kernel space, including any physical memory address (and thus the
  physical memory of any other process). Instructions leaking private
  data are executed out-of-order while an exception is being handled.

- Spectre induces a victim process to execute instructions that leak
  data from its address space.  Instructions leaking private data are
  executed out-of-order because of branch misprediction.




## Problem 2

- Static libraries .a: collections of binary .o files, searched by the
  linker at compile-time to include binary code of missing symbols.
- Dynamic libraries .so: binary code is not included in the
  executable, but loaded in memory at run-time (in pages shared with
  other processes) from libraries installed in the system.
- Programs compiled statically include all the binary code
  of required libraries; this makes distribution and deployment easier
  but (1) requires recompilation to update/fix library functions; (2)
  increases memory usage in the system (library code is not shared by
  different processes); (3) increases the size of binary executables.



## Problem 3

- VLIW with static scheduling: instructions are reordered and
  scheduled for execution in "packets" at compile time (by the
  compiler).

- Processors with dynamic scheduling: each instruction is added to the
  queue of the hardware unit required for its execution and issued
  out-of-order when its dependencies are satisfied. Completed
  instructions are added to a re-order buffer (ROB) and their
  side-effects are committed in order to ensure equivalent program
  semantics in the presence of exceptions or branch mispredictions.

- Static scheduling places the burden of scheduling on the compiler
  instead of the CPU, requiring recompilation for different CPU
  models.



## Problem 4


180

-76



## Problem 5


9.5



## Problem 6

0x0000 0000 FFFF C4C4

0x1122 3344 4455 555F

0xFFFF FF00 FF00 0041

0x0000 0000 4400 0042



## Problem 7


128k

9

14

70.0 ns



## Problem 8

miss and no eviction

miss and eviction

miss and eviction



## Problem 9

24

40

72

80



## Problem 10

Execute
Stall
Stall
Execute
Stall



## Problem 11

combine4:
    movl $0,%eax
L1: jge %rdi,%rsi,L2
    ld 0(%rdi),%ebx
    ld 4(%rdi),%ecx
    ld 8(%rdi),%edx
    ld 12(%rdi),%ebp
    addl %ebx,%ecx
    addl %edx,%ebp
    addl %ecx,%eax
    subl %ebp,%eax
    ld 16(%rdi),%r8d
    ld 20(%rdi),%r9d
    ld 24(%rdi),%r10d
    ld 28(%rdi),%r11d
    addl %r8d,%r9d
    addl %r10d,%r11d
    addl %r9d,%eax
    subl %r11d,%eax
    addq $32,%rdi
    jmp L1
L2: st %eax,0(%rsi)



## Problem 12

```
======== ALU / Branch ======== | ======== Load / Store ========
addq $32,%rdi                  | ld 0(%rdi),%rax
addq $48,%rsi                  | ld 0(%rsi),%rbx
                               | ld -24(%rdi),%rcx
andq %rax,%rbx                 | ld -40(%rsi),%rdx
                               | ld -16(%rdi),%r8
andq %rcx,%rdx                 | ld -24(%rsi),%r9
subq %rbx,%rdx                 | ld -8(%rdi),%r10
andq %r8,%r9                   | ld -16(%rsi),%r11
                               | st %rdx,-32(%rsi)
andq %r10,%r11                 |
subq %r9,%r11                  |
jne %rdi,%rbp,L1               | st %r11,-8(%rsi)
```



## Problem 13

z, update_counters
q
x, find1
y, find_index



## Problem 14

struct item {
    struct item *l;
    struct item *r;
    int key;
    short value;
};

struct item *select(int key, struct item *p);


int search(int key, int lo, int hi,
            struct item *p) {

    int x = p->key;

    if (x == key && x == 42) {

        return (p->value + 42) & -7;

    } else if (x < lo) {

        return search(key, lo, hi, p->r);

    } else if (x > hi) {

        return search(key, lo, hi, p->l);

    } else {

        struct item *newp = select(key, p);
        return search(key, lo+2, hi-2, newp);

    }
}






