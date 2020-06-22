# USC CS356 Spring 2020: Hello Lab (v1.0)


**Q1.** If you run `./hello > out.txt` the messages "Hello ... !" are
redirected to `out.txt` but the instructions are not. Why?

Your Answer:
```
(Suggestion: Look at the `printf` statements in `hello.c`)
Because the instructions are being prited to stderr, which is a stream seperate from stdin

```


**Q2.** How can you redirect both `stdout` and `stderr` to `out.txt`?

Your Answer:
```
(Suggestion: The answer is in README.md)
find /var/tmp -name "*" -print > out.txt 2>&1

```


**Q3.** The file `in.txt` contains the input for `hello`. How can you make
`hello` read from `in.txt` instead of `stdin`?

Your Answer:
```
(Suggestion: With `./hello ? in.txt` -- replace the question mark)
./hello < in.txt

```


**Q4.** If you remove the parentheses from the macro `ONE_PLUS_TWICE` in
`hello.c` the output line `Macro example: 26` changes. Why are the parentheses
important?

Your Answer:
```
(Suggestion: Think about the precedence of operators `+` and `*`.)
We need the parentheses to properly define and indicate which operations we
want to executed first

```


**Q5.** You can compile with `gcc hello.c list.c -o hello`. Why don't you
need to pass `list.h` to GCC?

Your Answer:
```
(Suggestion: Think about how #include works in .c files.)
Because we #include "list.h" which inserts a custom header list.h from current dir

```

**Q6.** Should `make` recompile `hello` when `list.h` changes? How is this
ensured in the `Makefile`?

Your Answer:
```
(Suggestion:  Look into the -MMD -MP options of GCC and how they are used in Makefile.)
Yes, by compiling each .c file into a .o file and linking them together we can ensure to only
recompile files that have changed.

```
