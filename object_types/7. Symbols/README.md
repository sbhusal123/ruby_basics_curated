# Symbols in Ruby
- **Cannot be edited.**
- Begins with colon.
- Not delimited by quotes.
- Lowercase, underscore
- **cannot be assigned a value**
- Example: ``:first_name``

> Symbol acts as a lable to piece of data.

```rb
irb(main):067:0> :name.class
=> Symbol
```

## Example usage with hash

```rb
person = {:first_name => "surya", :last_name => 'Bhusal'}
=> {:first_name=>"surya", :last_name=>"Bhusal"}

# indexing with label
irb(main):066:0> person[:first_name]
=> "surya"

# type of key is Symbol
person.keys.first.class
=> Symbol
```

## Why not use string, what's the special purpose of Symbol types in ruby ?

- It boils down to how ruby manages a program memory.

- For most of the object types, it frequently performs garbage collection, i.e. for the purpose
of memory management, it frequently clears the segment of memory after use of variable.

- However, that's not the case with symbols, it can stay on memory for a longer period.

- As it's never edited or assigned a value, instead used to label a data, a location in memory for it never changes
  during execution flow.

```rb
# a same string has a different address in memory / object id
irb(main):069:0> "test".object_id
=> 1236040
irb(main):070:0> "test".object_id
=> 1239400

# A symbol has same address in memory
irb(main):001:0> :name.object_id
=> 71708
irb(main):002:0> :name.object_id
=> 71708
irb(main):003:0> :name.object_id
=> 71708
```
