class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :breed
      t.string :personality
      t.boolean :adopted
    end
  end
end
