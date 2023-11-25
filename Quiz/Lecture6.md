**Q**: What are the functions in the `Eq` class?

a. `(==), (/=)`

b. `(==)`

c. `(==), (<), (>)`

**A**: `a` is the correct answer.

---

**Q**: For which of the following classes can we get automatic instances with `deriving`?

a. `Num`

b. `Ord`

c. `Size`

**A**: `b` is the correct answer.

---

**Q**: Which of the following instance declarations is legal?

a. `instance Eq Maybe`

b. `instance Eq (a,a)`

c. `instance Eq (Maybe Int)`

d. `instance Eq (a,b)`

**A**: `d` is the correct answer. `a` is wrong because `Maybe` is missing a type parameter.
`b` is wrong because type parameters must be unique type variables. `c` is wrong because `Int`
is not a type variable.

---

**Q**: Given the following definition of the class `BitOperations`

```
class BitOperations a where
  bitNot :: a -> a
  bitNot x = bitNand x x
  bitAnd :: a -> a -> a
  bitAnd x y = bitNot (bitOr (bitNot x) (bitNot y))
  bitOr :: a -> a -> a
  bitOr x y = bitNot (bitAnd (bitNot x) (bitNot y))
  bitNand :: a -> a -> a
  bitNand x y = bitNot (bitAnd x y)
```

which set of operations is not a minimal complete definition of `BitOperations`?

a. `bitNand, bitAnd`

b. `bitAnd, bitOr`

c. `bitAnd, bitNot`

d. `bitNot, bitOr`

**A**: `b` is the correct answer.

---

**Q**: The declaration `instance Num a => Eq (Pair a)` tells me that

a. All instances of `Num` are instances of `Eq`

b. `Pair a` is an instance of `Eq` if `a` is an instance of `Num`

c. The instance `Eq (Pair a)` inherits the instance `Num a`

**A**: `b` is the correct answer.

---

**Q**: The declaration `class Num a => Fractional a` tells me that

a. All instances of `Fractional` must be instances of `Num`

b. All instances of `Num` must be instances of `Fractional`

c. If I define an instance for `Fractional`, I also get an instance for `Num`

d. If I define an instance for `Num`, I also get an instance for `Fractional`

**A**: `a` is the correct answer.
