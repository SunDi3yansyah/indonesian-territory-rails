module IndonesianTerritory
  class ModelGenerator < Rails::Generators::Base
    source_root File.expand_path('../../../app/models', __dir__)

    def models dir_model = nil
      dist_dir = dir_model.nil? ? 'app/models' : dir_model

      copy_file 'district.rb', "#{dist_dir}/district.rb"
      copy_file 'province.rb', "#{dist_dir}/province.rb"
      copy_file 'regency.rb', "#{dist_dir}/regency.rb"
      copy_file 'village.rb', "#{dist_dir}/village.rb"
    end
  end
end
