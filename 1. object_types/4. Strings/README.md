# Strings

- A datatype containig chars.

- Convention: `my_string = '<value>'` or `my_string = "<value>"`

## Concatenation
- Performed with addition operator. `+`

- Internally the way it works is through operator and operand type overloading.

```rb
x = "Hi"

y = 'Hello'

puts x + ' ' + y
# Hi Hello
```

## Append:
- Appends the content to the end.

- Performed with `<<` operator.

```rb
x = "Hi"

y = 'Hello'

puts y << ' ' << x
# Hello Hi
```

## Multiplication
- Appends the content of string to the end, number of types mentiond.

```rb
x = "Hi "

puts x*3
# Hi Hi Hi
```

## Caveats:

```rb
x = 2
y = "3"

puts x * y
# TypeError, operands not compatible. Cause an integer cannot be multiplied by string
```

Instead let's typecast first

```rb
x = 2
y = "3"

puts x.to_i * y.to_i
# 6
```

## String Methods:

- Suppose: `x = "hello world"`

- `x.upcase` => `HELLO WORLD`

- `x.downcase` => `hello world`

- `x.reverse` => `dlrow olleh`

- `x.capitalize` => `Hello World`

- `x.length` returns the length of string i.e. `11` including whitspaces.

Every method for any data types can be chained. Example

```rb
x = "Hello World"

x.reverse.upcase
# DLROW OLLEH
```

## String Escaping And Interpolation

- String with special characters.
- A string type can be notified to contain an special characters using. `\`

```rb
x = 'Hello's world'
# gives syntax error

# instead 
x = 'Hello\'s world'
```

**Control Characters**
- Tabbed `\t`, 4 spaces
- Line break `\n`

Example:

```rb
x = 'Hello\nworld'

puts x
# Hello\nworld

x = "Hello\nworld"
puts x
# Hello
# World
```

**String Interpolation**
- Inserting the value of a variable in the string.

```rb
name = "Surya"

puts "Hi, #{name}"
# Hi Surya

puts 'Hi, #{name}'
# Hi, #{name}

puts "1 + 1 = #{1 + 1}"

x = "Hi"
puts "hey, #{x.upcase}"
# hey, HI
```

**Note these controll characters and string interpolation works only with double quote string i.e. `""`**
