# Array
- Ordered collection of objects (may be of diffent or same type)
- Types: `string, object of some class, integer, floats, ....`
- Indexed with integer, where an integer value represents a position.
- Indexing starts with 0.
- Initialized as: `empty_array = []` with `[]` square brackets.

## Indexing
- Begins with `0`

- Returns **nill if index > length of the array**.

- Indexed value can be negative, i.e. indexes from the last. -1 => index of last item.

- Selecting a number of items from index. ``array[<starting_index>, <no_o_items_to_select>]``. Starting index in such case can be negative which is interpreted as starting from last <starting_index> pick the next ...

- Indexing with range, two dots between range: ``array[<starting_index>..<end_index>]``

```rb
irb(main):001:0> x = [1, 3, 3, 4, 5, "a", "b"]
=> [1, 3, 3, 4, 5, "a", "b"]

irb(main):002:0> x.length
=> 7

# 20th index is unassigned => nill
irb(main):003:0> x[20]
=> nil

# indexing a last item.
irb(main):004:0> x[-1]
=> "b"

# from the 2nd (3rd) pick next 4 items
irb(main):005:0> x[2, 4]
=> [3, 4, 5, "a"]

# from the 0th (1st), pick next 3 items
irb(main):006:0> x[0, 3]
=> [1, 3, 3]

# starting from 3rd last position, pick next 2
irb(main):007:0> x[-3, 2]
=> [5, "a"]

# range indexing
irb(main):08:0> x[2..4]
=> [3, 4, 5]
irb(main):013:0> x[-3..-1]
=> [5, "a", "b"]

```


## Array Operations

- **Assignmend:** ``array[<index>] = <value>``
- nil assignmend: ``array[<index>] = nil``

if index assigned > length of ann array.
- Index unassigned are nil.

- **Append** item to the end, : ``<array> << <value>``

```rb
irb(main):001:0> x = [1, 2, 3]
=> [1, 2, 3]

# assignment index > length of array
irb(main):002:0> x[5] = 8
=> 8

irb(main):003:0> x.length
=> 6

irb(main):004:0> x
=> [1, 2, 3, nil, nil, 8]

irb(main):005:0> x[2] = nil
=> nil

irb(main):006:0> x << 10
=> [1, 2, nil, nil, nil, 8, 10]

irb(main):007:0> x
=> [1, 2, nil, nil, nil, 8, 10]
```

**Arithmetic Operation:**
- `+` joins an array.
- `-` calculates the element in left array by removing common between two. i.e. (left array) - Intersection (left, right)
- `*` **unsupported between two array** but when used with integer, repeats the elements number of times.

```rb                          
irb(main):009:0> x = [1, 2, 3, 4]
=> [1, 2, 3, 4]

irb(main):010:0> y = [3, 4, 5, 6]
=> [3, 4, 5, 6]

irb(main):011:0> x + y
=> [1, 2, 3, 4, 3, 4, 5, 6]

irb(main):012:0> x - y
=> [1, 2]

irb(main):014:0> k = [2, 3]
=> [2, 3]


irb(main):015:0> k * 2
=> [2, 3, 2, 3]
```
