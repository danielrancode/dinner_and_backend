class CreatePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :programs do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.integer :event_id
      t.timestamps
    end
  end
end
