class CreateManpowers < ActiveRecord::Migration
  def change
    create_table :manpowers do |t|
      t.string :project_engineer
      t.string :materials_engineer
      t.string :project_foreman
      t.belongs_to :project, index:true,foreign_key:true

      t.timestamps null: false
    end
  end
end
