# Migration opener

Each time after I generated new migration in Rails, I copy-pasted path of generated file and typed `subl -n db/migration/20130111084016_my_migration.rb`.

So I decided to make *migration_opener* to open any migration after it's generated throught `rails generate migration ...`.

## Installation

Add this line to your application's Gemfile:

    gem 'migration_opener'

And then execute:

    $ bundle

## Usage

By default migration_opener opens migration with your `$EDITOR` env variable, but you can re-define it in `config/initializers/migration_opener.rb`, for example:

```ruby
MigrationOpener.editor = :subl
```

...if you use Sublime Text, or

```ruby
MigrationOpener.editor = :textmate
```

if you use TextMate.

Of course, you can define any editor:

```ruby
MigrationOpener.editor = "/usr/bin/myeditor --someflag"
```

**or even throught special ENV variable:**

`export MIGRATION_EDITOR="/usr/bin/editor --flag"`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
