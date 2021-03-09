class Formation < ApplicationRecord
  has_many :promotions
  has_many :category_formation_jointures
  has_many :categories, through: :category_formation_jointures
end
