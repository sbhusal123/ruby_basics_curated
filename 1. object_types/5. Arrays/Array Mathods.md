## 

**Array Methods**

- `.length` or `.size` returns the number of items in an array.

- `.reverse` to reverse the ordering of elements. => `.reverse!` => inplace

- `.shuffle` to randomly place the elements, `.shuffle!` inplace version.



```rb
# define an array
irb(main):002:0> x = [2, 4, ['a', 'b'], nil, 4, 'c']
=> [2, 4, ["a", "b"], nil, 4, "c"]

# count of elements
irb(main):003:0> x.length
=> 6

# reverse the ordering of an element
irb(main):004:0> x.reverse
=> ["c", 4, nil, ["a", "b"], 4, 2]

# reverse
irb(main):006:0> x.reverse
=> ["c", 4, nil, ["a", "b"], 4, 2]
irb(main):007:0> x
=> [2, 4, ["a", "b"], nil, 4, "c"]

# inplace reverse: note that it permanently modifies the ordering
irb(main):008:0> x.reverse!
=> ["c", 4, nil, ["a", "b"], 4, 2]
irb(main):009:0> x
=> ["c", 4, nil, ["a", "b"], 4, 2]


# shuffle:
irb(main):010:0> arr = [2, 3, 5, 6]
=> [2, 3, 5, 6]
irb(main):011:0> arr.shuffle
=> [3, 2, 6, 5]
irb(main):012:0> arr
=> [2, 3, 5, 6]

# shuffle inplace
irb(main):015:0> arr.shuffle!
irb(main):016:0> arr
=> [6, 5, 3, 2]
```

- `.uniq` returns the array withut any duplicate element, preserving the order. => ``uniq!` inplace

```rb
# uniq
irb(main):017:0> x = [1,1,2,2,3,3]
=> [1, 1, 2, 2, 3, 3]
irb(main):018:0> x.uniq
=> [1, 2, 3]
irb(main):019:0> x
=> [1, 1, 2, 2, 3, 3]

# inplace
irb(main):020:0> x.uniq!
=> [1, 2, 3]
irb(main):021:0> x
=> [1, 2, 3]
```

- `.compact` to remove the nullable items. => `.compact!` inplace version.

```rb
# compact
irb(main):023:0> x = [1, 1, 2, 3, nil, 4, 4, nil]
=> [1, 1, 2, 3, nil, 4, 4, nil]
irb(main):024:0> x.compact
=> [1, 1, 2, 3, 4, 4]
irb(main):025:0> x

# compact inplace
=> [1, 1, 2, 3, nil, 4, 4, nil]
irb(main):026:0> x.compact!
=> [1, 1, 2, 3, 4, 4]
irb(main):027:0> x
=> [1, 1, 2, 3, 4, 4]
```

- `.flatten` flattens an array, i.e. if there is an array inside array, it flattens it and removes any sub array elements. => `.flatten!` inpalce.

```rb
# flatten
irb(main):028:0> x = [1, 3, 4, [5, 6, [7, 8]]]
=> [1, 3, 4, [5, 6, [7, 8]]]
irb(main):029:0> x.flatten
=> [1, 3, 4, 5, 6, 7, 8]
irb(main):030:0> x
=> [1, 3, 4, [5, 6, [7, 8]]]

# flatten inplace
irb(main):031:0> x.flatten!
=> [1, 3, 4, 5, 6, 7, 8]
irb(main):032:0> x
=> [1, 3, 4, 5, 6, 7, 8]
```


- `.include?(<element>)` checks if element exists in array. Returns `true` if exists else `false`.

```rb
irb(main):033:0> x = [1, 2, 3]
=> [1, 2, 3]

irb(main):034:0> x.include?(2)
=> true

irb(main):035:0> x.include?(10)
=> false
```

- `.delete_at(<index>)` deletes an item from the index.
- Note that, it doesnt fills the index with null.
- Order is preserved after deletion.
- If index > size of array, returns nill.

```rb
irb(main):039:0> x = [1, 3, 4, 4, 5]
=> [1, 3, 4, 4, 5]

irb(main):040:0> x.delete_at(4)
=> 5

irb(main):041:0> x
=> [1, 3, 4, 4]

irb(main):042:0> x.delete_at(1)
=> 3

irb(main):043:0> x
=> [1, 4, 4]

irb(main):050:0> x.delete_at(20)
=> nil
irb(main):051:0> x
=> [1, 4, 4]

```

- `.delete(<item>)` delete the item in an array.
- Preserves the order.
- Returns nil if item doesnt exists.

```rb
irb(main):052:0> x = [1, 1, 2, 3, 4]
=> [1, 1, 2, 3, 4]

irb(main):053:0> x.delete(1)
=> 1

irb(main):054:0> x
=> [2, 3, 4]

irb(main):055:0> x.delete(10)
=> nil
```

- `.join(<delimiter>)` for delimited string notation.
- If delimeter is not supplied, returns all array item as a single string.

```rb
irb(main):056:0> x = [1, 2, 3, 4]
=> [1, 2, 3, 4]

irb(main):057:0> x.join("")
=> "1234"

irb(main):058:0> x.join
=> "1234"

irb(main):059:0> x.join(" ,")
=> "1 ,2 ,3 ,4"
```

- `.split(<delimeter>)` splits the string with delimter and converts to array.

```rb
irb(main):063:0> "1, 2, 3, 4, 5".split(" ,")
=> ["1, 2, 3, 4, 5"]

irb(main):065:0> "1: 2: 3: 4: 5".split(": ")
=> ["1", "2", "3", "4", "5"]
```


**Array Methods: [List Operations]**

- `.push(<item>)` appends item to the end of array

- `.pop` removes item from the end of array.

```rb

irb(main):074:0> x = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]

# push
irb(main):075:0> x.push(6)
=> [1, 2, 3, 4, 5, 6]
irb(main):076:0> x
=> [1, 2, 3, 4, 5, 6]

# pop
irb(main):077:0> x.pop
=> 6
irb(main):078:0> x
=> [1, 2, 3, 4, 5]
```

- `.shift` shifts the array, with a window size of 1. **Note: it decreases the size of array.**

- `.shift(<index>)` returns the item before index, and inplace modifies the array to contain element after index. Index position itself is inclusive.

```rb
irb(main):084:0> x
=> [1, 2, 3, 4, 5]

# shift
irb(main):085:0> x.shift
=> 1
irb(main):086:0> x
=> [2, 3, 4, 5]

# shift indexed
irb(main):087:0> x = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]
irb(main):088:0> x.shift(2)
=> [1, 2]
irb(main):089:0> x
=> [3, 4, 5]
```

- `.unshift(<item>)` adds the item to the beginning. Slides the original array to the right.
- `<item>` can be multiple arguments, list, string.

```rb
irb(main):111:0> x = [1, 2]
=> [1, 2]

# single element
irb(main):112:0> x.unshift(4)
=> [4, 1, 2]
irb(main):113:0> x
=> [4, 1, 2]

# multiple element
irb(main):114:0> x.unshift('a', 'b', 'c')
=> ["a", "b", "c", 4, 1, 2]
irb(main):115:0> x
=> ["a", "b", "c", 4, 1, 2]

# multiple elemnts
irb(main):116:0> x.unshift([1, 2], 3)
=> [[1, 2], 3, "a", "b", "c", 4, 1, 2]
irb(main):117:0> x
=> [[1, 2], 3, "a", "b", "c", 4, 1, 2]
```
