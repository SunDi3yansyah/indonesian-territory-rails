## Indonesian Territory

Indonesian Territory for Rails

#### Setup

You can use generator:

```
rails g migration
```

or

```
rails g model
```

or

```
rails g scaffold
```

to

```
Village district:references name
District regency:references name
Regency province:references name
Province name
```

Example:

```
rails g scaffold Province name
```

Customize to your needs

#### Seed

Copy and paste from seed file:

1. provinces.rb
2. regencies.rb
3. districts.rb
4. villages.rb

Note: Must sequentially
