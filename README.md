# PLEASE NOTE, THIS PROJECT IS NO LONGER BEING MAINTAINED
# Migration opener

Each time after I generated new migration in Rails, 
I copy-pasted path of generated file and typed 

`subl -n db/migration/20130111084016_my_migration.rb`.

So I decided to make *migration_opener* to open any migration 
after it's generated throught 

`rails generate migration ...`.

<a href="https://evrone.com/?utm_source=github.com">
  <img src="https://evrone.com/logo/evrone-sponsored-logo.png"
       alt="Sponsored by Evrone" width="231">
</a>


## Getting Started
### Prerequisites

Support Ruby on Rails >= 4.1

### Installation

Add this line to your application's Gemfile:

    gem 'migration_opener'

And then execute:

    $ bundle

To prevent enabling gem behavior for all project's developers, add to Gemfile:

    gem 'migration_opener', require: ENV.key?('AUTOOPEN_MIGRATIONS')
    
### Usage

By default migration_opener opens migration with `$EDITOR` variable, but you can change it using special `$MIGRATION_EDITOR` variable:

`export MIGRATION_EDITOR="/usr/bin/editor --flag"`

for Sublime Text 2 this option is:

`export MIGRATION_EDITOR="subl -n"`

for Textmate:

`export MIGRATION_EDITOR="mate"`

## Contributing

Please read [Code of Conduct](CODE-OF-CONDUCT.md) and [Contributing Guidelines](CONTRIBUTING.md) for submitting pull requests to us. 

## Changelog

The changelog is [here](CHANGELOG.md).

## Authors

* [Kir Shatrov](https://github.com/kirs) - *Initial work*

See also the list of [contributors](https://github.com/evrone/migration_opener/contributors) who participated in this project.

## License

This project is licensed under the [MIT License](LICENSE).
