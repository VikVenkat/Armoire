class AddFeaturesToRentals < ActiveRecord::Migration
  def self.up
	add_column :rentals, :price, :float
	add_column :rentals, :listed_by, :integer
	add_column :rentals, :available, :boolean
	add_column :rentals, :notes, :string
  end

  def self.down
	remove_column :rentals, :price
	remove_column :rentals, :listed_by
	remove_column :rentals, :available
	remove_column :rentals, :notes
  end
end
