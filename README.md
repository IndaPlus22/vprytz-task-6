# DD1337 Week 6

So long for-loops, hello recursion!
This week we are going to learn a language from the functional paradigm: Haskell.

## Coding task

Solve this Kattis-problem:
https://kth.kattis.com/problems/kth.progp.warmup

## Written questions

1. Why can you write expressions like this one in Haskell?

```haskell
let evenNumbers = [ 2 * n | n <- [1..]]
print (take 1000000 evenNumbers)
```

2. What is recursion?

3. Why does the following function work in languages like haskell but not for others like JavaScript?

```haskell
sum :: Integral n, Num n => n -> n -> n
sum s 0 = s
sum s n = sum (s + n) (pred n)
```

```javascript
function sum(s, n) {
  if (n == 0) {
    return s;
  } else {
    return sum(s + n, n - 1);
  }
}
```

## Prepare assignment

As usual create a repo with the name `<kth-id>-task-6` and copy the contents of this.

To install Haskell use this excellent link: https://www.haskell.org/ghcup/

## Reading material

Chapter 6 of the "Haskell book"
http://learnyouahaskell.com
