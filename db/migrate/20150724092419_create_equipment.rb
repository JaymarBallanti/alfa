class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :equipment_name
      t.string :equipment_type
      t.string :plate_number
      t.integer :quantity
      t.belongs_to :project, index:true,foreign_key:true

      t.timestamps null: false
    end
  end
end
