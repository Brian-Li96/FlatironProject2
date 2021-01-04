class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :person_id
      t.integer :shelter_id
      t.string :date
      t.time :time
    end
  end
end
