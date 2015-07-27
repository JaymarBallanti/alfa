class CreateTimeExtensions < ActiveRecord::Migration
  def change
    create_table :time_extensions do |t|
      t.string :date_from
      t.string :date_to
      t.string :number_of_days
      t.belongs_to :project, index:true,foreign_key:true

      t.timestamps null: false
    end
  end
end
