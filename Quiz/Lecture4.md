**Q**: What is the type of `swap . swap`?

a. `(a, b) -> (a, b)`

b. `(a, b) -> (b, a)`

c. `a -> a`

**A**: `a` is the correct answer.

---

**Q**: What is the type of `\f g x -> (f x, g x)`?

a. `(a -> b) -> (c -> d) -> (a, c) -> (b, d)`

b. `(a -> b) -> (a -> c) -> a -> (b, c)`

c. `(a -> b) -> (b -> a) -> a -> (b, a)`

**A**: `a` is the correct answer.

---

**Q**: What is the type of `\t -> (fst . fst $ t, (snd . fst $ t, snd t))`?

a. `(a, (b, c)) -> (a, (b, c))`

b. `(a, (b, c)) -> ((a, b), c)`

c. `((a, b), c) -> (a, (b, c))`

**A**: `c` is the correct answer. `(snd . fst $ t, snd t)` creates the pair `(b, c)`,
and `fst . fst $ t` extracts `a`.

---

**Q**: What does the function `foldr (\x xs -> xs ++ [x]) []` do?

a. It doesn’t change its input list at all

b. It changes the associativity of a list from left to right

c. It reverses its input list

**A**: `c` is the correct answer. Remember `foldr` operates from right to left,
and each subsequent element is appended to the result.

---

**Q**: What does the function `foldr (\(x, y) zs -> x : y : zs) []` do?

a. It turns a list of pairs into a pair of lists

b. It turns a pair of lists into a list of pairs

c. It turns a list of pairs into a list of elements

**A**: `c` is the correct answer.

---

**Q**: What is the type of `foldr (\n b -> n == 3 && b)`?

a. `(Foldable t, Eq a, Num a) => Bool -> t a -> Bool`

b. `(Foldable t, Eq a, Num a, Bool b) => b -> t a -> b`

c. `(Foldable t, Eq a, Num a) => Bool -> [ a ] -> Bool`

**A**: `a` is the correct answer.

---

**Q**: What is the type of `\x -> case x of (True, "Foo") -> show True ++ "Foo"`?

a. `Either Bool String -> String`

b. `(Bool, String) -> String`

c. `Show a => (Bool, String) -> a`

**A**: `b` is the correct answer.
