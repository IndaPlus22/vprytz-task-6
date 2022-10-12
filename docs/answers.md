# Svar till frågor

## Fråga 1

_Why can you write expressions like this one in Haskell?_

```haskell
let evenNumbers = [ 2 * n | n <- [1..]]
print (take 1000000 evenNumbers)
```

**Answer**: The expression will contain numbers that are multiplied by two, meaning they are always even. So `take 1000000` means to take the first 1 000 000 numbers from this array. So the array `evenNumbers` is like an expression of how the elements in the array are supposed to look rather than a definition of what the array contains.

## Fråga 2

_What is recursion?_

**Answer**: When something is defined in terms of itself. For example, a recursive function is a function that calls upon itself in its definition. Recursive functions need base cases, otherwise, they will run forever.

## Fråga 3

_Why does the following function work in languages like haskell but not for others like JavaScript?_

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

**Answer**: The above code does run in JavaScript but won't work for larger numbers. Most programming languages will run out of memory in the stack having to keep so many "function references" in memory.
