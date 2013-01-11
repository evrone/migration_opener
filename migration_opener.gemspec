# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'migration_opener/version'

Gem::Specification.new do |gem|
  gem.name          = "migration_opener"
  gem.version       = MigrationOpener::VERSION
  gem.authors       = ["Kir Shatrov"]
  gem.email         = ["shatrov@me.com"]
  gem.description   = %q{Tiny gem open to migration after it's generated throught rails generate migration ...}
  gem.homepage      = "https://github.com/evrone/migration_opener"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'rails'
end
