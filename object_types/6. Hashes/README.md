# Hash / Dictionary
- Unordered
- Paired key value type
- items accessed with key instead of of index.

### Initializing hash:

- Empty hash: ``person = {}``
- Item on it: ``person = {'name' => 'Surya', 'address' => 'foo'}``
- or alternate declaration could be: ``person = {'name': 'surya', 'address': 'foo'}``
- Above two declaration have different connotations. We'll discuss about those in separate section.
- For now we'll use `=>` based declaration.

```rb
# declaration type 1
irb(main):006:0> p1 = {'name' => 'Surya', 'address' => 'foo'}
=> {"name"=>"Surya", "address"=>"foo"} # string as a key
irb(main):007:0> p1.class
=> Hash

# declaration type 2 
irb(main):008:0> p2 = {'name': 'Surya', 'address': 'foo'}
=> {:name=>"Surya", :address=>"foo"} # sybmols as a key
irb(main):010:0> p2.class
=> Hash
```

    In the first implementation, we've string as a key, while in the second initialization we've
    symbols as a key. Note that symbols are not equal to string in ruby. They are different type of
    objects

**Note: There's a difference in two types of declaration. Later we'll discuss about it.**

### Accessing and Setting  Element
- Acessed with: ``hash[<key>]``
- Returns `nil` if item with key doesnt exists.

```rb
# access / retrival
irb(main):013:0> p1 = {"name" => 'Surya', "address" => 'foo'}
=> {"name"=>"Surya", "address"=>"foo"}
irb(main):014:0> p1['name']
=> "Surya"

# setter
irb(main):016:0> p1
=> {"name"=>"Surya", "address"=>"foo"}
irb(main):017:0> p1['name'] = 'Ramesh'
=> "Ramesh"
irb(main):018:0> p1
=> {"name"=>"Ramesh", "address"=>"foo"}


irb(main):019:0> p1['age'] = 30
=> 30
irb(main):020:0> p1
=> {"name"=>"Ramesh", "address"=>"foo", "age"=>30}

# returns nill if key value pair doesnt exists
irb(main):021:0> p1['foo']
=> nil
```

### Hash Methods
- `.keys` returns the lists of keys in hash.

- `.values` returns the lists of values.

- `.size` or `.length` retutns the size.

- `.to_a` converts hash to `[[<key1>, <val1>], [<key2>, [val2]]]` representation.

```rb
irb(main):028:0> person
=> {"name"=>"Surya", "age"=>"30", "addres"=>"foo"}

# keys
irb(main):029:0> person.keys
=> ["name", "age", "addres"]

# values
irb(main):030:0> person.values
=> ["Surya", "30", "foo"]

# size / length
irb(main):031:0> person.size
=> 3
irb(main):032:0> person.length
=> 3

# hash to array
irb(main):033:0> person.to_a
=> [["name", "Surya"], ["age", "30"], ["addres", "foo"]]
```

- `.has_key?` checks the presence of keys
- `.has_value?` checks the presence of value

```rb
irb(main):028:0> x = {:a => 1, :b => 2}
=> {:a=>1, :b=>2}

irb(main):030:0> x.has_key?(:a)
=> true

irb(main):031:0> x.has_value?(2)
=> true
```
