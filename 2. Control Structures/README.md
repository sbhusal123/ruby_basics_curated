# Control Structures / Conditionals


## 1. if, elsif, else

- Begins with ``if``, ends with ``end``.
- May / may not have elsif, else block.
- May / may not have multiple elsif block.

```rb
if <boolean1>
    # stmt1
elsif <boolean2>
    # smtm2
elsif <boolean2>
    # stml
else
    # stmt3
end
```

**Control Flow**
- If the boolean1 eval to true, executes first block i.e. stmt1.
- If not checks which of the elsif block yields true, executes the block stmt1 or stmt2.
- If none of above is true, executes statement inside else block.

**Example**

```rb
def test(x)
    if x == 1
        puts "x=1"
    elsif x == 2
        puts "x=2"
    else
        puts "Neither x=1 nor x=2"
    end
end

test(1) # x=1
test(2) # x=2
test(0) # Neither x=1 nor x=2
```

## 2. Unless

```rb
unless <boolean>
end

# which is equals to
if not <boolean>
end
```

- Can have else.
- Statement inside first unless block gets executed, if the boolean expression evaluates false.
- Generally not used with elseif. (If gets complicated, use if)

```rb
def test(x)
    unless x == 3
        puts "x!=3"
    else
        puts "x=3"
    end
end

test(3) # x=3
test(4) # x!=3
```

## 3. Case

```rb
case <var>
when <condition1>
    # stmt
when <condition2>
    # stmt
when <condition3>
    # stmt
else
    # stmt
end
```

Begins with case evaluation of the given variable, executes the statement inside when block if any condition true.
Else, if no any condition evaluates to true then jumps control to the statement inside end

```rb
def test(x)
    case x
        when 1..10
            puts "Beween 1 to 10"
        when 11..15
            puts "Between 11 to 15"
        when 20..30
            puts "Between 20 to 30"
        else
            puts "Something else"
    end
end

test(18) # Something else
test(20) # Between 20 to 30
```

## 4. Inline conditionals: Ternary Operator

```rb
<boolean_eval> ? <true_eval> : <false_eval>
```

- Inline condition, uses `?` to evaluate an express based on a value that evaluates to boolean.
- If an expression evaluates to true, expression just before `:` enters the execution flow.
- Otherwise the expression after `:` is evaluated

```rb
x = 10
x.even? ? (puts "Even") : (puts "Odd") # Even
```

Note that, ``even?`` is a method provided by ruby that checks weather a given integer is even.
Basically with ruby, any methods that returns a boolean values ends with `?`
