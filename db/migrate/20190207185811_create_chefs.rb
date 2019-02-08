class CreateChefs < ActiveRecord::Migration[5.2]
  def change
    create_table :chefs do |t|
      t.string :name
      t.string :specialty
      t.integer :price
      t.integer :rating
      t.string :profile_picture_url
      t.string :bio

      t.timestamps
    end
  end
end
