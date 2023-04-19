# Ranges

- Sequence of values with start and end.
- Starting end ending values can be integer as well as string.

## Range Types:
- `<starting>..<ending>` is an inclusive range, as it consists of end element. Notice **two dots** between.
- `<starting>...<ending>` is an exclusive range, as it consists of end element. Notice **three dots** between.

**Examples**

```rb
# inclusive
irb(main):043:0> inclusive = 1..10
=> 1..10
irb(main):044:0> inclusive.class
=> Range

# exclusive
irb(main):045:0> exclusive = 1...10
=> 1...10
irb(main):046:0> exclusive.class
=> Range


# inclusive
irb(main):049:0> inclusive.begin
=> 1
irb(main):050:0> inclusive.first
=> 1
irb(main):051:0> inclusive.last
=> 10
irb(main):052:0> inclusive.end
=> 10

# exclusive
irb(main):054:0> exclusive.begin
=> 1
irb(main):055:0> exclusive.first
=> 1
irb(main):056:0> exclusive.end
=> 10
irb(main):057:0> exclusive.last
=> 10 # on exploding into array, we never get last one

# exclusive range to array
irb(main):058:0> inclusive
=> 1..10
irb(main):059:0> inclusive.to_a
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# exclusive range to array
irb(main):062:0> exclusive
=> 1...10
irb(main):063:0> exclusive.to_a
=> [1, 2, 3, 4, 5, 6, 7, 8, 9]

# range explosion -> same as to_a
irb(main):064:0> [*inclusive]
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
irb(main):065:0> [*exclusive]
=> [1, 2, 3, 4, 5, 6, 7, 8, 9]

```

- `.begin` or `.first` to access the first element.
- `.end` or `.last` to acess the last element.
- `.to_a` is same as `[*<range>]` i.e. range explosion.


**Range can also be a string**

```rb
irb(main):067:0> alpha = "a".."e"
=> "a".."e"
irb(main):068:0> alpha.class
=> Range

irb(main):069:0> alpha.include?('b')
=> true

irb(main):070:0> [*alpha]
=> ["a", "b", "c", "d", "e"]
```
