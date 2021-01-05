class AddPhoneNumberToShelters < ActiveRecord::Migration[6.0]
  def change
    add_column :shelters, :phone_number, :string
  end
end
