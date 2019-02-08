class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.integer :chef_id
      t.integer :guest_count
      t.integer :cost
      t.string :speical_note, :default => "none"
      t.datetime :datetime, :default => Time.now
      t.timestamps
    end
  end
end
