**Q**: What is the type of `('c',not)`

a. `[Char]`

b. `[Bool]`

c. `(Char,Bool -> Bool)`

d. `(Char,Bool)`

e. It is a type error.

**A**: `c` is the correct answer.

---

**Q**: What is the type of `['c',not]`

a. `[Char]`

b. `[Bool]`

c. `(Char,Bool -> Bool)`

d. `(Char,Bool)`

e. It is a type error.

**A**: `e` is the correct answer.

---

**Q**: Which of these is a value of the following type?
```
data T = X Int | Y String String | Z T
```

a. `X "foo"`

b. `Y "foo"`

c. `Z (X 1)`

d. `X (Z 1)`

**A**: `c` is the correct answer.

---

**Q**: What is the type of this function?
```
f (_:Just x:_) = x
f _            = False
```

a. `Maybe a -> a`

b. `[Maybe a] -> a`

c. `[Maybe a] -> Bool`

d. `[Maybe Bool] -> Bool`

**A**: `d` is the correct answer.

---

**Q**: What is the type of this function?

a. `f x y = x-y == 0`

b. `(Num a, Eq a) => a -> a -> Bool`

c. `Num a => a -> a -> Bool`

d. `Eq a => a -> a -> Bool`

e. `a -> a -> Bool`


**A**: `a` is the correct answer.

---

**Q**: Which of the following types can `x` have in order for `x (&&) y` to not be a type error?

a. `Bool`

b. `Bool -> Bool -> Bool`

c. `(Bool -> Bool -> Bool) -> Bool -> Bool`

**A**: `c` is the correct answer. `&&` is a `(Bool -> Bool -> Bool)` that is normally infixed but since it parenthesized it is not infixed.