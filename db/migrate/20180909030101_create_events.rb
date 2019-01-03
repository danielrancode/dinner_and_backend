class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.text :json_data
      t.timestamps
    end
  end
end
