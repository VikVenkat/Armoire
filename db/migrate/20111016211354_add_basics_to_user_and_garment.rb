class AddBasicsToUserAndGarment < ActiveRecord::Migration
  def self.up
	add_column :users, :is_admin, :boolean
	add_column :garments, :editable_by, :boolean
  end

  def self.down
	remove_column :users, :is_admin
	remove_column :garments, :editable_by
  end
end
