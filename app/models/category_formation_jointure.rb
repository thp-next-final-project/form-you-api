class CategoryFormationJointure < ApplicationRecord
  belongs_to :formation
  belongs_to :category
end
