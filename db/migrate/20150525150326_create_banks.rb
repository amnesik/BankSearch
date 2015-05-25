class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.string :name
      t.string :description
      t.string :lat
      t.string :long
      t.string :image
      t.belongs_to :masterbank, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
