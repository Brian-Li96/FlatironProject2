class AddphoneToShelters < ActiveRecord::Migration[6.0]
  def change
    add_column :shelters, :phone, :string

  end
end
