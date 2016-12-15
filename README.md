## Indonesian Territory

Indonesian Territory for Rails

### Setup

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

### Seed

Copy all file `db/data/*` in your project

1. provinces.rb
2. regencies.rb
3. districts.rb
4. villages.rb

Copy file `lib/tasks/custom_seed.rake` in your project

``` rb
namespace :db do
  namespace :seed do
    Dir[File.join(Rails.root, 'db', 'data', '*.rb')].each do |filename|
      task_name = File.basename(filename, '.rb').intern    
      task task_name => :environment do
        load(filename) if File.exist?(filename)
      end
    end
  end
end
```

Open terminal, go to the directory of your project. Then run:

```
rake db:seed:provinces
rake db:seed:regencies
rake db:seed:districts
rake db:seed:villages
```

Note: Must sequentially
