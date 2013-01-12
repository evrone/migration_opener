# Migration opener

Each time after I generated new migration in Rails, I copy-pasted path of generated file and typed `subl -n db/migration/20130111084016_my_migration.rb`.

So I decided to make *migration_opener* to open any migration after it's generated throught `rails generate migration ...`.

## Installation

Add this line to your application's Gemfile:

    gem 'migration_opener'

And then execute:

    $ bundle

## Usage

By default migration_opener opens migration with `$EDITOR` variable, but you can change it using special `$MIGRATION_EDITOR` variable:

`export MIGRATION_EDITOR="/usr/bin/editor --flag"`

for Sublime Text 2 this option is:

`export MIGRATION_EDITOR="subl -n"`

for Textmate:

`export MIGRATION_EDITOR="mate"`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
