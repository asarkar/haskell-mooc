**Q**: Why can’t we map `Nothing`?

a. Because `Nothing` doesn’t take arguments

b. Because `Nothing` returns nothing

.c Because `Nothing` is a constructor.

**A**: `a` is the correct answer.

---

**Q**: If we define data `Boing = Frick String Boing (Int -> Bool)`, what is the type of `Frick`?

a. `Boing`

b. `String -> Boing -> Int -> Bool -> Boing`

c. `String -> Boing -> (Int -> Bool) -> Boing`

**A**: `c` is the correct answer.

---

**Q**: If we define data `ThreeLists a b c = ThreeLists [a] [b] [c]`, what is the type of the constructor `ThreeLists`?

a. `[a] -> [b] -> [c] -> ThreeLists`

b. `a -> b -> c -> ThreeLists a b c`

c. `[a] -> [b] -> [c] -> ThreeLists a b c`

d. `[a] -> [b] -> [c] -> ThreeLists [a] [b] [c]`

**A**: `c` is the correct answer.

---

**Q**: If we define `data TwoLists a b = TwoList {aList :: [a], bList :: [b]}`, what is the type of the function `aList`?

a. `aList` is not a function, it is a field

b. `TwoLists a b -> [a]`

c. `[a] -> TwoLists a b`

d. `[a]`

**A**: `b` is the correct answer.