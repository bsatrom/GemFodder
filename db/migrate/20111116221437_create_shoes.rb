class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :name
      t.integer :user_id
      t.integer :max_mileage
      t.boolean :auto_order
      t.string :url

      t.timestamps
    end
  end
end
