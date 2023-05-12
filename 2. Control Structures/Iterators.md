# Iterators:
- Applying procedure repeatedly.
- Perform code on each item in set.
- Set of values could be arrays, hash, ....

**Variants**
- times: repeats no of times
- upto: repeats untill the value reaches by increament (each time increased by 1)
- each: iterates through each item in collection
- downto: repeats untill the value reaches by decreament (each time decreased by 1)

## Examples

**Approach 1**

```rb
5.times { puts "Hello" }
1.upto(5) { puts "Hello" }
1.downto(1) { puts "Hello" }
(1..5).each { puts "Hello" }
```

**Approach 2: Accessing the iterator value**

```rb
5.times { |i| puts "Hello #{i}" }
1.upto(5) { |i| puts "Hello #{i}" }
1.downto(1) { |i| puts "Hello #{i}" }
(1..5).each { |i| puts "Hello #{i}" }
```

**Approach 3: With do**
- Note: times is exclusive for upper range. Starts with 0.
- 
```rb
# times
5.times do |i|
    puts "Hello #{i}"
end
# Output
# Hello 0
# Hello 1
# Hello 2
# Hello 3
# Hello 4

# upto
1.upto(5) do  |i| 
    puts "Hello #{i}"
end
# Output
# Hello 1
# Hello 2
# Hello 3
# Hello 4
# Hello 5

# downto
5.downto(1) do |i| 
    puts "Hello #{i}"
end
# Output
# Hello 5
# Hello 4
# Hello 3
# Hello 2
# Hello 1

# each
(1..5).each do |i| 
    puts "Hello #{i}"
end
# Hello 1
# Hello 2
# Hello 3
# Hello 4
# Hello 5
```

## 2. Other variations with Examples

- Iterating with each
- Iterating with in

```rb
fruits = ["apple", "banana", "pear"]

# each format
fruits.each do |fruit|
    puts fruits
end

# in format
for fruit in fruits
    puts fruits
end

# Output
# apple
# banana
# pear
```
