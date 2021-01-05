class RemoveFeeFromAdoptions < ActiveRecord::Migration[6.0]
  def change
    remove_column :adoptions, :fee, :integer
  end
end
