class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.integer :user_id
      t.integer :shoe_id
      t.decimal :distance
      t.datetime :date

      t.timestamps
    end
  end
end
