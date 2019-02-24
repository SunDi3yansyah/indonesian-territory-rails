namespace :db do
  namespace :seed do
    Dir[File.expand_path('../../db/seed/*.rb', __dir__)].each do |filename|
      task_name = File.basename(filename, '.rb')
      desc "Loads the seed data from db/seed/*.rb in gem indonesian-territory-rails"
      task task_name.to_sym => :environment do
        load(filename) if File.exist?(filename)
      end
    end
  end
end
