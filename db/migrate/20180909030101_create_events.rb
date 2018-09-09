class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :url
      t.string :venue__url
      t.string :venue__address
      t.string :venue__name
      t.string :venue__display_location
      t.string :venue__postal_code
      t.string :title
      t.string :datetime_utc
      t.string :performers__image
      t.timestamps
    end
  end
end
