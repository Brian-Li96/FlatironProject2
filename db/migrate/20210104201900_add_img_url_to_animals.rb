class AddImgUrlToAnimals < ActiveRecord::Migration[6.0]
  def change
    add_column :animals, :img_url, :string
  end
end
