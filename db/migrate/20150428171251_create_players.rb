class CreatePlayers < ActiveRecord::Migration
  def up
    create_table :players do |t|
      t.string "name", :limeit => 20
      t.integer "ranking", :default => 0
      t.integer "points", :default => 0
      t.timestamps null: false
    end
  end
  def down
   drop_table users
end
end
