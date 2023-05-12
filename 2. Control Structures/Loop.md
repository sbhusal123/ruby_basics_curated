# Control Structures: Loop

- Allows to repeat certain scetion of code over and over again.

## 1. Simplest Syntax

```rb
loop do
    # code block
end
```

> Here the code block inside do and end repeats infinitely, but wait, how do we exit out of loop.

### Exit Condition

- **break:** Terminates the whole loop.
- **next** Jump to next loop.
- **redo** Redo this loop.
- **retry:** Start the whole loop over again.

**Example:**

```rb
i = 1
loop do
    break if i <= 0
    puts "Countdown #{i}"
    i -= 1
end

# Output
# Countdown: 5
# Countdown: 4                                                        
# Countdown: 3                                                        
# Countdown: 2                                                        
# Countdown: 1 
```

## 2. While loop

**Synax:**

```rb
while <boolean>
    # stmt
end

until <boolean>
    # stmt
end
```

**Example**

```rb
i = 5
while i > 0
    puts "Countdown #{i}"
    i -= 1
end

# Output
# Countdown: 5
# Countdown: 4                                                        
# Countdown: 3                                                        
# Countdown: 2                                                        
# Countdown: 1
```

**Example**

```rb
until i < = 0 do
    puts "Countdown #{i}"
    i -= 1
end
```

> Note the conditional blocks in while and until.
- **while** runs the block till the conditional evaluated is true.
- While **until** runs the block until the  conditional is meet. Then ends
