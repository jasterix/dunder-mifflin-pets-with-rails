class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.string :age
      t.datetime :created_at
      t.string :updated_at
      t.string :datetime

      t.timestamps
    end
  end
end
