# Floats

- Number with precision

- Both Integer and Float Inherit from Type: `Numeric`

**Type are Always preserved in opations**

```rb
x = 1.0

y = x + 1

puts y
# 2.0

puts y.class
# Float
```

```rb
x = 10

y = 3

z = x / y

puts z
# 3

puts z.class
# Integer
```

=> Note that, we expect the float 3.333 but, the return type is integer. Let's see the other case.

```rb
x = 10.0

y = 3

z = x / y

puts z
# 3.33333

puts z.class
# Float
```

**Float Methods:**
- Assume: `x = -12345.678`

- To Integer: Doesnt Performs Rounding `x.to_i` => `-12345`

- Abs: `abs`. `x.abs` => `-12345.678`

- Round: `round`. `x.round` => `-12346`

- Floor: `floor`. `x.floor` => `-12346`, rounds up.

- Ceil: `ceil`. `x.ceil` => `-12345`, rounds down.

**IRB Session**

```rb
irb(main):001:0> x = 12345.6789
=> 12345.6789

irb(main):002:0> x.round
=> 12346

irb(main):003:0> x.floor
=> 12345

irb(main):005:0> x.ceil
=> 12346

irb(main):006:0> 12345.6789.round
=> 12346

irb(main):007:0> 12345.6789.floor
=> 12345

irb(main):008:0> 12345.6789.ceil
=> 12346

irb(main):009:0> x = 12345.6789
=> 12345.6789

irb(main):010:0> x.round
=> 12346

irb(main):011:0> x.floor
=> 12345

irb(main):012:0> x.ceil
=> 12346
```

> Floor rounds down while, ceil rounds up.
