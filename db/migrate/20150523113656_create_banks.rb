class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.belongs_to :masterbank, index: true
      t.timestamps null: false
      t.string :lat
      t.string :long
      t.string :image
      t.string :name
      t.string :decription
    end
  end
end
