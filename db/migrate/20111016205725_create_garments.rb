class CreateGarments < ActiveRecord::Migration
  def self.up
    create_table :garments do |t|
      t.string :brand
      t.string :size
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :garments
  end
end
