class AddAnimalIdToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :animal_id, :integer
  end
end
