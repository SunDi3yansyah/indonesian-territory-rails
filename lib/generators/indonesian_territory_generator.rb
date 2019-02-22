require 'rails/generators'
require 'rails/generators/active_record'

class FriendlyIdGenerator < ActiveRecord::Generators::Base
  source_root File.expand_path('templates', __dir__)

  def copy_files
    migration_template 'create_province.rb', 'db/migrate/create_province.rb'
    migration_template 'create_regency.rb', 'db/migrate/create_regency.rb'
    migration_template 'create_district.rb', 'db/migrate/create_district.rb'
    migration_template 'create_village.rb', 'db/migrate/create_village.rb'
  end
end
