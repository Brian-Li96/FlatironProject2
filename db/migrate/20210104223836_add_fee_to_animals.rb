class AddFeeToAnimals < ActiveRecord::Migration[6.0]
  def change
    add_column :animals, :fee, :integer
  end
end
