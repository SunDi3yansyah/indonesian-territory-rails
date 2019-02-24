MIGRATION_CLASS =
  if ActiveRecord::VERSION::MAJOR >= 5
    ActiveRecord::Migration["#{ActiveRecord::VERSION::MAJOR}.#{ActiveRecord::VERSION::MINOR}"]
  else
    ActiveRecord::Migration
  end

class CreateRegency < MIGRATION_CLASS
  def change
    create_table :regencies do |t|
      t.string :name

      t.timestamps
    end

    add_reference :regencies, :province, foreign_key: true, after: :id
  end
end
