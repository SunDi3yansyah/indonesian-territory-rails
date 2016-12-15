namespace :db do
  namespace :seed do
    Dir[File.join(Rails.root, 'db', 'data', '*.rb')].each do |filename|
      task_name = File.basename(filename, '.rb').intern    
      task task_name => :environment do
        load(filename) if File.exist?(filename)
      end
    end
  end
end
