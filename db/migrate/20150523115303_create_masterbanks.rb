class CreateMasterbanks < ActiveRecord::Migration
  def change
    create_table :masterbanks do |t|
      t.string :name
      t.string :description
      t.timestamps null: false
    end
  end
end
