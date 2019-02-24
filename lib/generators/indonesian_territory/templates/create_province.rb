MIGRATION_CLASS =
  if ActiveRecord::VERSION::MAJOR >= 5
    ActiveRecord::Migration["#{ActiveRecord::VERSION::MAJOR}.#{ActiveRecord::VERSION::MINOR}"]
  else
    ActiveRecord::Migration
  end

class CreateProvince < MIGRATION_CLASS
  def change
    create_table :provinces do |t|
      t.string :name

      t.timestamps
    end
  end
end
