class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :address, null: false 
      t.string :name, null: false 
      t.text :about, null: false 
      t.string :cuisine, null: false 
      t.string :city, null: false
      t.string :phone_number, null: false
      t.string :state, null: false
      t.string :price, null: false
      t.float :average_rating, null: false
      t.timestamps
    end
    add_index :restaurants, :name, unique: true 
    add_index :restaurants, :city
    add_index :restaurants, :cuisine
    add_index :restaurants, :average_rating

  end
end

