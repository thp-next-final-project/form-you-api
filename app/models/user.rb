class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
		:jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  # RELATIONS
  has_many :promotion_user_jointures
  has_many :promotions, through: :promotion_user_jointures
  # VALIDATES
  # validates_presence_of   :encrypted_password, :firstname, :lastname, :role

  # validates               :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "is not a valid email" }
  def to_h()
    promotions = self.promotions
    return {
        "firstname" => self.firstname,
        "lastname" => self.lastname,
        "is_validated" => self.is_validated,
        "email" => self.email,
        "firstname" => self.firstname,
        "role" => self.role,
        "id" => self.id,
        "promotions" => promotions
    }
  end

end
