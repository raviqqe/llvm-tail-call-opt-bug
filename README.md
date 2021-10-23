```lldb
_k_8f:
    0x55555556dfe4 <+180>: movq   %r12, 0x18(%rbp)
->  0x55555556dfe8 <+184>: movq   %rax, 0x8(%rbp)
```

```lldb
(lldb) m read -c 64 $rbp
0x7fffffffe000: 00 00 00 00 00 00 00 00 d8 18 56 55 55 55 00 00  ..........VUUU..
0x7fffffffe010: a8 cd 5e 55 55 55 00 00 c8 cd 5e 55 55 55 00 00  ..^UUU....^UUU..
0x7fffffffe020: c8 cd 5e 55 55 55 00 00 a0 cb 5e 55 55 55 00 00  ..^UUU....^UUU..
0x7fffffffe030: 10 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00  ................
```

```lldb
(lldb) m read -c 128 $rsp
0x7fffffffdfc8: 56 55 57 55 55 55 00 00 38 09 5f 55 55 55 00 00  VUWUUU..8._UUU..
0x7fffffffdfd8: 28 e0 ff ff ff 7f 00 00 01 00 00 00 00 00 00 00  (...............
0x7fffffffdfe8: 00 e0 7f ff ff 7f 00 00 18 69 5e 55 55 55 00 00  .........i^UUU..
0x7fffffffdff8: 90 e1 ff ff ff 7f 00 00 00 00 00 00 00 00 00 00  ................
0x7fffffffe008: d8 18 56 55 55 55 00 00 a8 cd 5e 55 55 55 00 00  ..VUUU....^UUU..
0x7fffffffe018: c8 cd 5e 55 55 55 00 00 c8 cd 5e 55 55 55 00 00  ..^UUU....^UUU..
0x7fffffffe028: a0 cb 5e 55 55 55 00 00 10 00 00 00 00 00 00 00  ..^UUU..........
0x7fffffffe038: 00 01 00 00 00 00 00 00 00 f0 7f ff ff 7f 00 00  ................
```

```lldb
_if_2d:
    0x55555556d2fd <+13>: movq   0x18(%rbp), %r10
    0x55555556d301 <+17>: movq   0x10(%rbp), %r8
```

```lldb
(lldb) m read -c 128 $rsp
0x7fffffffdff0: 18 69 5e 55 55 55 00 00 90 e1 ff ff ff 7f 00 00  .i^UUU..........
0x7fffffffe000: 00 00 00 00 00 00 00 00 d8 18 56 55 55 55 00 00  ..........VUUU..
0x7fffffffe010: a8 cd 5e 55 55 55 00 00 c8 cd 5e 55 55 55 00 00  ..^UUU....^UUU..
0x7fffffffe020: c8 cd 5e 55 55 55 00 00 a0 cb 5e 55 55 55 00 00  ..^UUU....^UUU..
0x7fffffffe030: 10 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00  ................
0x7fffffffe040: 00 f0 7f ff ff 7f 00 00 83 84 56 55 55 55 00 00  ..........VUUU..
0x7fffffffe050: 00 f0 7f ff ff 7f 00 00 19 0e 56 55 55 55 00 00  ..........VUUU..
0x7fffffffe060: 00 f0 7f ff ff 7f 00 00 9a f9 59 55 55 55 00 00  ..........YUUU..
```

## Again

```lldb
General Purpose Registers:
0x18(%rbp)       rax = 0x00005555555618d8  app`os_app::main::h235a017a98cfc38e + 40
       rbx = 0x00007fffffffe028
       rcx = 0x00005555555f0d88
       rdx = 0x00005555555ecfd8
       rdi = 0x00007fffffffe028
       rsi = 0x0000000000000038
       rbp = 0x00007fffffffe000
       rsp = 0x00007fffffffdfa0
        r8 = 0x00005555555e6d98
        r9 = 0x00005555555ecda8
       r10 = 0x00005555555f0e18
       r11 = 0x0000000000000007
0x8(%rbp)       r12 = 0x00005555555ecdc8
       r13 = 0x0000000000000000
       r14 = 0x000055555556dac0  app`_k_29
       r15 = 0x00007fffffffe190
       rip = 0x000055555556dfec  app`_k_8f + 188
    rflags = 0x0000000000000206
        cs = 0x0000000000000033
        fs = 0x0000000000000000
        gs = 0x0000000000000000
        ss = 0x000000000000002b
        ds = 0x0000000000000000
        es = 0x0000000000000000
```

```lldb
(lldb) m read -c 64 $rbp
0x7fffffffdff0: 18 69 5e 55 55 55 00 00 90 e1 ff ff ff 7f 00 00  .i^UUU..........
0x7fffffffe000: 00 00 00 00 00 00 00 00 d8 18 56 55 55 55 00 00  ..........VUUU..
0x7fffffffe010: a8 cd 5e 55 55 55 00 00 c8 cd 5e 55 55 55 00 00  ..^UUU....^UUU..
0x7fffffffe020: c8 cd 5e 55 55 55 00 00 a0 cb 5e 55 55 55 00 00  ..^UUU....^UUU..
(lldb) reg read
General Purpose Registers:
       rax = 0x00005555555618d8  app`os_app::main::h235a017a98cfc38e + 40
       rbx = 0x0000555555575556  app`_if_93 + 86
       rcx = 0x00005555555f0d88
       rdx = 0x00005555555ecfd8
       rdi = 0x00007fffffffe028
       rsi = 0x000055555556dac0  app`_k_29
       rbp = 0x00007fffffffdff0
       rsp = 0x00007fffffffdff0
        r8 = 0x0000000000000000
        r9 = 0x0000000000000000
       r10 = 0x00005555555618d8  app`os_app::main::h235a017a98cfc38e + 40
       r11 = 0x0000000000000007
       r12 = 0x00005555555f0938
       r13 = 0x00007fffffffe028
       r14 = 0x0000000000000001
       r15 = 0x00007fffff7fe000
       rip = 0x000055555556d305  app`_if_2d + 21
    rflags = 0x0000000000000246
        cs = 0x0000000000000033
        fs = 0x0000000000000000
        gs = 0x0000000000000000
        ss = 0x000000000000002b
        ds = 0x0000000000000000
        es = 0x0000000000000000
```
