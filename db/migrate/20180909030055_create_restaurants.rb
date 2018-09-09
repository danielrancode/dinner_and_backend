class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :url
      t.integer :rating
      t.string :categories__title
      t.string :image_url
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :state
      t.string :zip_code
      t.timestamps
    end
  end
end
