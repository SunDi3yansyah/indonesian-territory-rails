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

Copy all file `db/seed/*` in your project

1. provinces.rb
2. regencies.rb
3. districts.rb
4. villages.rb

Copy file `lib/tasks/seed_development.rake` in your project

``` rb
namespace :db do
  namespace :seed do
    Dir[Rails.root.join('db', 'seed', '*.rb')].each do |filename|
      task_name = File.basename(filename, '.rb')
      desc "Seed " + task_name + ", based on the file with the same name in `db/seed/*.rb`"
      task task_name.to_sym => :environment do
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

### SQL Import Method

1. Import all sql file from `db/sql/*` to database project.
2. Run update Date Time:

``` rb
Object.update_all(created_at: DateTime.now, updated_at: DateTime.now)
```

Example

```
Province.update_all(created_at: DateTime.now, updated_at: DateTime.now)
```
