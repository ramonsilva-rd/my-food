class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.float :lat
      t.float :lng
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
