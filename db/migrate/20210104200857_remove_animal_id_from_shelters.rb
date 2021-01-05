class RemoveAnimalIdFromShelters < ActiveRecord::Migration[6.0]
  def change
    remove_column :shelters, :animal_id, :integer

  end
end
