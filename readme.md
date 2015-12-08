# NEWTON'S SQRT FORUMLA

1. Implement Newton's method for finding the square root of x

`z = z - (z**2 - x)/2z`

iterate over this function 10 times and return the result

2. How many times do you have to iterate over this function in order to be within 0.000001 of the built-in Ruby sqrt function?

3. Give the result for #2 for z = x/10, z = x/5, z = x/2

---

```
bundle
```
to install RSpec

```
rspec
```
to run the tests
---

# Answers

1. `SquareRoot.new(x).compute`
for x = 2, 1.414213562373095

2. `SquareRoot.new(x).times_iterated`
for x = 2, 4

3.

```ruby
SquareRoot.new(x).times_iterated(x/10)
SquareRoot.new(x).times_iterated(x/5)
SquareRoot.new(x).times_iterated(x/2)
```

for x = 2,
above yields 6, 5, 4 respectively.
