**Q**: What's the type of `x` in `liftA2 (&&) Nothing x`?

a. `Applicative f => f Bool`

b. `Applicative Bool`

c. `Maybe Bool`

**A**: `c` is the correct answer.

---

**Q**: How many elements does `liftA2 f xs ys` have when `xs` and `ys` are lists?

a. `length xs + length ys`

b. `length xs * length ys`

c. `min (length xs) (length ys)`

**A**: `b` is the correct answer.

---

**Q**: Which of these expressions is equivalent to `liftA2 f x y`? There might be multiple correct answers.

a. `f <$> x <*> y`

b. `f <*> x <*> y`

c. `f <*> x <$> y`

d. `fmap f x <*> y`

e. `pure f <*> x <*> y`

**A**: `a`, `d`, and `e` are the correct answers.

---

**Q**: If `f :: a -> Maybe b` and `xs :: [a]`, which of these expressions has a type different from the others?

a. `fmap f xs`

b. `traverse f xs`

c. `map f xs`

**A**: `b` is the correct answer. `traverse` creates `Maybe [a]`, while the other two creates `[Maybe a]`.

---

**Q**: For which `Applicative` do the expressions `pure x <* pure y` and `pure x <|> pure y` produce different results?

a. `Maybe`

b. `[]`

c. `Validation`

**A**: `b` is the correct answer. For `Maybe`, `pure = Just`. So, `pure x <|> pure y = Just x <|> Just y = Just x`, and `pure x <* pure y = pure x = Just x`.

For lists, `pure x = [x]`. `(<|>)` for lists is just `(++)`. So, `pure x <|> pure y = [x] <|> [y] = [x] ++ [y] = [x, y]`, which, of course, is different from `pure x <* pure y = [x]`.
