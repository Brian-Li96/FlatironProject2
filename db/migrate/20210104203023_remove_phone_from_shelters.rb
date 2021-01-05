class RemovePhoneFromShelters < ActiveRecord::Migration[6.0]
  def change
    remove_column :shelters, :phone, :integer

  end
end
