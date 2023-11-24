**Q**: How many values does `f x = [x,x]` return?

a. Zero

b. One

c. Two

**A**: `b` is the correct answer.

---

**Q**: Why does the expression `Nothing 1` cause a type error?

a. Because `Nothing` takes no arguments

b. Because `Nothing` returns nothing

c. Because `Nothing` is a constructor

**A**: `a` is the correct answer.

---

**Q**: What is the type of the function `f x y = if x && y then Right x else Left "foo"`?

a. `Bool -> Bool -> Either Bool String`

b. `String -> String -> Either String String`

c. `Bool -> Bool -> Either String Bool`

**A**: `c` is the correct answer.

---

**Q**: Which of the following functions could have the type `Bool -> Int -> [Bool]`

a. `f x y = [0, y]`

b. `f x y = [x, True]`

c. `f x y = [y, True]`

**A**: `b` is the correct answer.

---

**Q**: What is the type of this function? `justBoth a b = [Just a, Just b]`

a. `a -> b -> [Maybe a, Maybe b]`

b. `a -> a -> [Just a]`

c. `a -> b -> [Maybe a]`

d. `a -> a -> [Maybe a]`

**A**: `d` is the correct answer.