class Rental < ActiveRecord::Base
  belongs_to :user
  belongs_to :garment

end
