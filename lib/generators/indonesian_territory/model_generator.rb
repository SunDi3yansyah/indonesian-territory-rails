module IndonesianTerritory
  class ModelGenerator < Rails::Generators::Base
    source_root File.expand_path('../../../app/models', __dir__)

    def models dir_model = nil
      dist_dir = dir_model.nil? ? 'app/models' : dir_model

      copy_file 'district.rb', "#{dist_dir}/district.rb", force: true
      copy_file 'province.rb', "#{dist_dir}/province.rb", force: true
      copy_file 'regency.rb', "#{dist_dir}/regency.rb", force: true
      copy_file 'village.rb', "#{dist_dir}/village.rb", force: true
    end
  end
end
