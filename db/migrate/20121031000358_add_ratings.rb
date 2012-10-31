class AddRatings < ActiveRecord::Migration
  def up
    create_table "ratings", :force => true do |t|
      t.column "rating", :integer, :default => 0
      t.column "rateable_type", :string, :limit => 15, :default => "", :null => false
      t.column "rateable_id", :integer, :default => 0, :null => false
      t.column "user_id", :integer, :default => 0, :null => false

      t.timestamps
    end

    add_index "ratings", ["user_id"]
  end

  def down
    drop_table :ratings
  end
end
