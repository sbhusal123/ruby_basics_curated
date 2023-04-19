# Nil
- Denotes (nothing).
- Often referenced as null.
- Not equals empty.
- Not equals to boolean false.

```rb
irb(main):077:0> nil.class
=> NilClass

# not equals to false
irb(main):078:0> nil == false
=> false

irb(main):079:0> nil.nil?
=> true

nil.equal?(:empty)
=> false
```

**Caveats:**
- Though, nil not equals false, ``!nil is always true``. It's used to check weather there is a non nil value.

```rb
irb(main):085:0> x = nil
=> nil

irb(main):086:0> !x
=> true
```
