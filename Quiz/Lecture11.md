**Q**: What is the type of this IO operation?
```
foo x = do putStrLn x
           y <- getLine
           return (length y)
```

a. `String -> IO String`

b. `IO Int`

c. `String -> IO Int`

d. `IO String -> IO Int`

**A**: `c` is the correct answer.

---

**Q**: Which of these lines could be used in place of `????`
```
quux :: String -> IO [String]
quux q = do y <- getLine
            z <- getLine
            putStrLn (y++z)
            ????
```

a. `q <- getLine`

b. `return (y++z)`

c. `return [q]`

d. `ans <- return [y,z]`

**A**: `c` is the correct answer.

---

**Q**: What values does `blorg [1,2,3]` print? That is, what values `x` does it call `print x` for. The value produced by `blorg` doesn’t count.
```
blorg [] = return 0
blorg (x:xs) = do m <- blorg xs
                  print x
                  return (m+x)
```

a. It prints `1, 2, 3`

b. It prints `1, 2, 3, 6`

c. It prints `3, 2, 1`

d. It prints `3, 2, 1, 6`

**A**: `c` is the correct answer.

---

**Q**: Which of these can a function of type `Int -> IO Int` do?

a. No function of this type can be defined.

b. Return a constant value.

c. Run the IO operation it has been given and return its value.

d. Query the user for a number and return it.

**A**: `d` is the correct answer.

---

**Q**: Which of these can a function of type `IO Int -> Int` do?

a. No function of this type can be defined.

b. Return a constant value.

c. Run the IO operation it has been given and return its value.

d. Query the user for a number and return it.

**A**: `b` is the correct answer.