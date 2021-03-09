class CreateCategoryFormationJointures < ActiveRecord::Migration[6.0]
  def change
    create_table :category_formation_jointures do |t|
      t.belongs_to :formation,  foreign_key: true, null: false
      t.belongs_to :category,  foreign_key: true, null: false

      t.timestamps
    end
  end
end
