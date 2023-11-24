**Q**: What's the type of this function? `both p q x = p x && q x`

a. `a -> Bool -> a -> Bool -> a -> Bool`

b. `(a -> Bool) -> (a -> Bool) -> a -> Bool`

c. `(a -> Bool) -> (b -> Bool) -> c -> Bool`

**A**: `b` is the correct answer.

---

**Q**: What's the (most general) type of this function? `applyInOut f g x = f (g (f x))`

a. `(a -> b) -> (b -> a) -> a -> b`

b. `(a -> b) -> (b -> c) -> a -> c`

c. `(a -> a) -> (a -> a) -> a -> a`

**A**: `a` is the correct answer.

---

**Q**: Which one of the following functions adds its first argument to the second?

a. `f x x = x + x`

b. `f x = \y -> x + y`

c. `f = \x y -> x + x`

**A**: `b` is the correct answer.

---

**Q**: Which one of the following functions does not satisfy `f 1 ==> 1`?

a. `f x = (\y -> y) x`

b. `f x = \y -> y`

c. `f x = (\y -> x) x`

**A**: `b` is the correct answer.

---

**Q**: Which one of the following functions is correctly typed?

a. `f x y = not x; f :: (Bool -> Bool) -> Bool`

b. `f x = x ++ "a"; f :: Char -> String`

c. `f x = 'a' : x; f :: String -> String`

**A**: `c` is the correct answer.

---

**Q**: How many arguments does `drop 2` take?

a. Zero

b. One

c. Two

**A**: `b` is the correct answer.

---

**Q**: What does this function do? `f (_:x:_) = x`

a. Returns the first element of a list

b. Returns an arbitrary element of a list

c. Returns all except the first and last elements of a list

d. Returns the second element of a list

**A**: `d` is the correct answer.

---

**Q**: What is the result of `reverse $ take 5 . tail $ "This is a test"`?

a. `"i sih"`

b. `"set a"`

c. A type error

**A**: `a` is the correct answer.

---

**Q**: If `f :: a -> b`, then what is the type of `map (.f)`?

a. `[b -> c] -> [a -> c]`

b. `[c -> a] -> [c -> b]`

c. `(b -> c) -> [a -> c]`

d. `[a] -> [b]`

**A**: Type of `.` is `(b -> c) -> (a -> b) -> a -> c`.
Type of `map` is `(a -> b) -> [a] -> [b]`.

`a` is the correct answer. This is because `.f` accepts as input the output type of `f`,
and `map` operates on a list. Thus, given a list of functions of type `b -> c`, we can compose
each one with `f` producing a list of functions of type `a -> c`.

---

**Q**: What is the type of the leftmost `id` in `id id`?

a. unspecified

b. `a`

c. `a -> a`

d. `(a -> a) -> (a -> a)`

**A**: `d` is the correct answer.

---

**Q**: What is the type of `const const`?

a. unspecified

b. `(c -> a -> b) -> a`

c. `c -> (a -> b -> a)`

d. `a -> b -> c -> a`

**A**: `c` is the correct answer.