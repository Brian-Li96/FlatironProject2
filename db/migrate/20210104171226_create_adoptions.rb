class CreateAdoptions < ActiveRecord::Migration[6.0]
  def change
    create_table :adoptions do |t|
      t.integer :person_id
      t.integer :animal_id
      t.integer :fee
    end
  end
end
