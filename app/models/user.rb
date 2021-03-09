class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
		:jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  # RELATIONS
  has_many :promotion_user_jointures
  has_many :promotions, through: :promotion_user_jointures
  # VALIDATES
  # validates_presence_of   :encrypted_password, :firstname, :lastname, :role

  # validates               :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "is not a valid email" }

end
