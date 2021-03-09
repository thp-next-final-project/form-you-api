class CreatePromotionUserJointures < ActiveRecord::Migration[6.0]
  def change
    create_table :promotion_user_jointures do |t|
      t.belongs_to :user,  foreign_key: true, null: false
      t.belongs_to :promotion,  foreign_key: true, null: false

      t.timestamps
    end
  end
end
