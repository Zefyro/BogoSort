# BogoSort
BogoSort is an algorithm used to sort the elements of an array by randomly generating different permutations of an array and then checking whether it is sorted or not. This repository aims to perform this task in all the programming languages that I have learned.

- [x] BogoSort implementation in C
- [x] BogoSort implementation in C++
- [x] BogoSort implementation in C#
- [x] BogoSort implementation in Dart
- [x] BogoSort implementation in Java
- [x] BogoSort implementation in JavaScript
- [x] BogoSort implementation in [JMC](https://github.com/WingedSeal/jmc) [^1]
- [x] BogoSort implementation in Python
- [x] BogoSort implementation in Rust
- [x] BogoSort implementation in SQF

All versions of the BogoSort algorithm will be done following the pseudocode:

```ruby
BogoSort (array: GenerateRandomArray (8)):
    while (array not Sorted):
        Shuffle (array)
        PrintCurrentIteration (array)
    end
```

[^1]: https://github.com/Zefyro/BogoSort/blob/main/jmc/README.md
