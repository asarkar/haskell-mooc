**Q**: Which of these statements is true?

a. `reverse . reverse . reverse === reverse`

b. `reverse . reverse === reverse`

c. `reverse . id === id`

**A**: `b` is the correct answer.

---

**Q**: Which of these is an infinite list that starts with `[0,1,2,1,2,1,2...]`?

a. `cycle [0,1,2]`

b. `0:repeat [1,2]`

c. `0:cycle [1,2]`

d. `0:[1,2..]`

**A**: `c` is the correct answer.

---

**Q**: What's the next step when evaluating this expression?
```
head (map not (True:False:[]))
```

a. `head (False : True : [])`

d. `head (not True)`

c. `head (False : map not (False:[]))`

d. `head (not True : map not (False:[]))`

**A**: `d` is the correct answer.

---

**Q**: Which of these values is not in weak head normal form?

a. `map`

b. `f 1 : map f (2 : [])`

c. `Just (not False)`

d. `(\x -> x) True`

https://wiki.haskell.org/Weak_head_normal_form

**A**: `d` is the correct answer. `a` is a built-in function applied to too few arguments. `b` and `c` are constructors.

---

**Q**: Which of these statements about the following function is true?
```
f 0 x = 1+x
```

a. `f _ x = 2+x`

b. `f` is strict in its left argument

c. `f` is strict in its right argument

d. `f` forces both of its arguments

e. None of the above

**A**: `d` is the correct answer. The left argument is evaluated because it is pattern matched on. The right argument is evalauted because `+` forces evaluation.

---

**Q**: Does this function work with infinite lists as input? Why?
```
f [] = []
f (x:xs) = x : map not xs
```

a. No, because it includes a `[]` case, which is never reached.

b. No, because it uses `map`, which evaluates the whole list.

c. Yes, because it only looks at the first element of the list before producing a WHNF value.

d. Yes, because it calls `map`, which works with infinite lists.

**A**: `c` is the correct answer. `f` works only for boolean lists, and runs forever.

---

**Q**: What about this one?
```
f xs = map (+(sum xs)) xs
```

a. No, because it uses `map`, which evaluates the whole list.

b. No, because computing the `head` of the result needs the whole input list.

c. Yes, because it doesn’t includes a `[]` case

d. Yes, because it calls `map`, which works with infinite lists.

**A**: `b` is the correct answer.