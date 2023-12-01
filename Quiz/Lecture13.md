**Q**: What is the expression equivalent to the following `do` block?
```
do y <- z
   s y
   return (f y)
```

a. `z >> \y -> s y >> return (f y)`

b. `z >>= \y -> s y >> return (f y)`

c. `z >> \y -> s y >>= return (f y)`

**A**: `b` is the correct answer.

---

**Q**: What is the type of `\x xs -> return (x : xs)`?

a. `Monad m => a -> [a] -> m [a]`

b. `Monad m => a -> [m a] -> [m a]`

c. `a -> [a] -> Monad [a]`

d. None of the above

**A**: `a` is the correct answer.

---

**Q**: What is the type of `\x xs -> return x : xs`?

a. `Monad m => a -> [a] -> m [a]`

b. `Monad m => a -> [m a] -> [m a]`

c. `a -> [a] -> Monad [a]`

d. None of the above

**A**: `b` is the correct answer.

---

**Q**: What is the type of `(\x xs -> return x) : xs`?

a. `Monad m => a -> [a] -> m [a]`

b. `Monad m => a -> [m a] -> [m a]`

c. `a -> [a] -> Monad [a]`

d. None of the above

**A**: `d` is the correct answer.