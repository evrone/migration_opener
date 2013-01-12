require "migration_opener/version"

module MigrationOpener
  class << self
    def editor_bin
      ENV['MIGRATION_EDITOR'].presence || ENV['EDITOR'].presence
    end

    def enabled?
      editor_bin.present?
    end
  end

  Rails::Generators::Migration.class_eval do
    alias_method :origin_migration_template, :migration_template

    def migration_template(source, destination=nil, config={})
      file_created = origin_migration_template(source, destination, config)
      if MigrationOpener.enabled?
        system("#{MigrationOpener.editor_bin} #{file_created}")
      end
    end
  end

end
