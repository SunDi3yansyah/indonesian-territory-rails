require 'rails/generators'
require 'rails/generators/active_record'

module IndonesianTerritory
  class MigrationGenerator < ActiveRecord::Generators::Base
    source_root File.expand_path('templates', __dir__)

    def install
      migration_template 'create_province.rb', 'db/migrate/create_province.rb', force: true
      migration_template 'create_regency.rb', 'db/migrate/create_regency.rb', force: true
      migration_template 'create_district.rb', 'db/migrate/create_district.rb', force: true
      migration_template 'create_village.rb', 'db/migrate/create_village.rb', force: true
    end
  end
end
