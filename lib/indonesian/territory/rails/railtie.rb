module Indonesian
  module Territory
    module Rails
      class Railtie < ::Rails::Railtie
        rake_tasks do
          load 'tasks/indonesian_territory.rake'
        end
      end
    end
  end
end
