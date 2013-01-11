require "migration_opener/version"

module MigrationOpener
  mattr_accessor :editor

  def self.editor_bin
    if editor.present?
      case editor
      when :subl
        "subl -n"
      when :textmate
        "mate"
      when :vim
        "vi"
      else
        editor
      end
    elsif ENV['MIGRATION_EDITOR'].present?
      ENV['MIGRATION_EDITOR']
    else
      ENV['EDITOR']
    end
  end

  Rails::Generators::Migration.class_eval do
    alias_method :origin_migration_template, :migration_template

    def migration_template(source, destination=nil, config={})
      file_created = origin_migration_template(source, destination, config)
      system("#{MigrationOpener.editor_bin} #{file_created}")
    end
  end

end
