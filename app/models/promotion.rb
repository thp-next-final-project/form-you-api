class Promotion < ApplicationRecord
  has_many :promotion_user_jointures
  has_many :users, through: :promotion_user_jointures
  belongs_to :formation
  belongs_to :room
end
