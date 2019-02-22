# Indonesian Territory for Rails

Indonesian Territory for Rails

[![Build Status](https://travis-ci.com/SunDi3yansyah/indonesian-territory-rails-rb.svg)](https://travis-ci.com/SunDi3yansyah/indonesian-territory-rails-rb)
[![License](https://img.shields.io/github/license/SunDi3yansyah/indonesian-territory-rails-rb.svg)](LICENSE)
[![Gem Version](https://badge.fury.io/rb/indonesian-territory-rails.svg)](https://badge.fury.io/rb/indonesian-territory-rails)
[![Download total](https://img.shields.io/gem/dt/indonesian-territory-rails.svg?style=flat)](https://badge.fury.io/rb/indonesian-territory-rails)
[![GitHub last commit](https://img.shields.io/github/last-commit/SunDi3yansyah/indonesian-territory-rails-rb.svg)](https://github.com/SunDi3yansyah/indonesian-territory-rails-rb/commits/master)
[![GitHub issues](https://img.shields.io/github/issues/SunDi3yansyah/indonesian-territory-rails-rb.svg)](https://github.com/SunDi3yansyah/indonesian-territory-rails-rb/issues)


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'indonesian-territory-rails'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install indonesian-territory-rails
```

## Usage

Copy for migration
```bash
rails g indonesian_territory
```

Migration app
```bash
rails db:migrate
```

Run seeding data Indonesian Territory use ruby method
```bash
rails db:seed:indonesian_territory
```

Or run seeding data Indonesian Territory use sql method
```bash
rails db:seed:indonesian_territory_sql
```

Override models
```bash
rails g indonesian_territory:models
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/SunDi3yansyah/indonesian-territory-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).


## Code of Conduct

Everyone interacting in the Indonesian::Territory::Rails project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/indonesian-territory-rails/blob/master/CODE_OF_CONDUCT.md).
