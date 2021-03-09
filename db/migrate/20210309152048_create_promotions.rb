class CreatePromotions < ActiveRecord::Migration[6.0]
  def change
    create_table :promotions do |t|
      t.datetime :date
      t.integer :note
      t.integer :nbr_student
      t.belongs_to :room,       foreign_key: true, null: false
      t.belongs_to :formation,       foreign_key: true, null: false

      t.timestamps
    end
  end
end
