class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.belongs_to :masterbank, index: true
      t.timestamps null: false
      t.string :lat
      t.string :long
      t.string :image
      
    end
  end
end
