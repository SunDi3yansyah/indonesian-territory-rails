require 'rails/generators'
require 'rails/generators/active_record'

class IndonesianTerritoryGenerator < ActiveRecord::Generators::Base
  source_root File.expand_path('templates', __dir__)

  def migrate
    migration_template 'create_province.rb', 'db/migrate/create_province.rb'
    migration_template 'create_regency.rb', 'db/migrate/create_regency.rb'
    migration_template 'create_district.rb', 'db/migrate/create_district.rb'
    migration_template 'create_village.rb', 'db/migrate/create_village.rb'
  end

  def models dir_model = nil
    dist_dir = dir_model.nil? ? 'app/models' : dir_model

    copy_file '../../../app/models/district.rb', "#{dist_dir}/district.rb"
    copy_file '../../../app/models/province.rb', "#{dist_dir}/province.rb"
    copy_file '../../../app/models/regency.rb', "#{dist_dir}/regency.rb"
    copy_file '../../../app/models/village.rb', "#{dist_dir}/village.rb"
  end
end
