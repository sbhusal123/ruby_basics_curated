# Boolean
- Object that is either true or false.

```rb
irb(main):011:0> true.class
=> TrueClass

irb(main):012:0> false.class
=> FalseClass
```

## Comparision and Logic Operators:

- Equal: `==`
- Less Than: `<`
- Greater Than: `>`
- Less than or Equal to: `<=`
- Greater than or Equal to: `>=`
- Not: `!`
- Not Equal: `!=`
- And: `&&`
- Or: `||`


```rb
irb(main):008:0> x = 1
=> 1

irb(main):009:0> x == 1
=> true

irb(main):010:0> x != 1
=> false

irb(main):014:0> x < 3
=> true

irb(main):015:0> x > 3
=> false

irb(main):016:0> x > 0 && x < 100
=> true

irb(main):017:0> x >= 100 || x <= 50
=> true
```

> A method that ends with `?` always **returns a boolean value** in ruby. For example:

```rb
irb(main):019:0> [1, 3, 4].include?(4)
=> true
irb(main):020:0> [1, 3, 4].include?(100)
=> false
```


**Extras**
- .between?
- .empty?

```rb
irb(main):021:0> 2.between?(1, 5)
=> true

irb(main):022:0> [1, 2, 3].empty?
=> false

irb(main):023:0> [].empty?
=> true
```

With hashes:

```rb
irb(main):028:0> x = {:a => 1, :b => 2}
=> {:a=>1, :b=>2}

irb(main):030:0> x.has_key?(:a)
=> true

irb(main):031:0> x.has_value?(2)
=> true
```
