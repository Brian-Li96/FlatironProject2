class AddFirstNameToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :first_name, :string

  end
end
