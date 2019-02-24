@migration_class =
  if ActiveRecord::VERSION::MAJOR >= 5
    ActiveRecord::Migration["#{ActiveRecord::VERSION::MAJOR}.#{ActiveRecord::VERSION::MINOR}"]
  else
    ActiveRecord::Migration
  end

class CreateVillage < @migration_class
  def change
    create_table :villages do |t|
      t.string :name

      t.timestamps
    end

    add_reference :villages, :district, foreign_key: true, after: :id
  end
end
