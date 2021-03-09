class PromotionUserJointure < ApplicationRecord
  belongs_to :user
  belongs_to :promotion
end
