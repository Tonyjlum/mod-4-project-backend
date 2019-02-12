class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.integer :chef_id
      t.integer :guest_count
      t.integer :cost
      t.string :note, :default => "none"
      t.datetime :datetime, :default => Time.now
      t.string :review, :default => 0
      t.float :chef_rating, :default => 0
      t.timestamps
    end
  end
end
