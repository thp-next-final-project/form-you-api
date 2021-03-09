class Category < ApplicationRecord
  has_many :category_formation_jointures
  has_many :formations, through: :category_formation_jointures
end
