# Variables

- Ruby convention: lower case with underscores

**Variables Scope Indicators**

- Global: starts with $ infront. Example: `$variable`

- Class variable: startes with @@ infront: `@@variable`

- Instance variable: starts with @variable: `@variable`

- Local Variable: `variable`


## Type Conversion:
- `<var>.to_i` converts to integer.
- `<var>.to_f` converts to float.
- `<var>.to_s` converts to string.

```rb
irb(main):001:0> x = 3.000
=> 3.0

irb(main):002:0> x.to_s.class
=> String

irb(main):003:0> x.to_i.class
=> Integer

irb(main):004:0> x.to_f.class
=> Float
```