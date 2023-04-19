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

# Constants
- References other object types, integre, range, ...
- If the name of variable begins with first letter capital => constants.
- Though they are termed constants, ruby allows to reset it's value through the execution.

```rb
irb(main):075:0> Temp = 10
=> 10

irb(main):076:0> Temp = 200
(irb):76: warning: already initialized constant Temp
(irb):75: warning: previous definition of Temp was here          
=> 200
```

> The generalconvention of declaring a constant is with all cap case letters.
> But for ruby to know as a constant, it's not necessary.
