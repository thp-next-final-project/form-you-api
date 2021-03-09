class Room < ApplicationRecord
  # RELATIONS
  has_many :promotions
  
  # VALIDATES
  validates_presence_of  :name
end
