class RemoveNameFromPeople < ActiveRecord::Migration[6.0]
  def change
    remove_column :people, :name, :string
  end
end
