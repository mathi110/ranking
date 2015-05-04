class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string "name", :limit => 20
      t.string "password", :limit => 20
      t.integer "Kash", :defualt => 0
      t.timestamps null: false
    end
  end
  def down
   drop_table users
  end
end
