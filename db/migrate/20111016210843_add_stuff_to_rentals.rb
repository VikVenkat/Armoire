class AddStuffToRentals < ActiveRecord::Migration
  def self.up
	add_column :rentals, :user_id, :integer
	add_column :rentals, :garment_id, :integer
  end

  def self.down
	remove_column :rentals, :user_id
	remove_column :rentals, :garment_id
  end
end
