class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :project_id_number
      t.string :project_name
      t.string :location
      t.string :implementing_office
      t.date :date_of_award
      t.date :date_of_contract
      t.date :date_started
      t.date :target_completion
      t.string :project_duration
      t.decimal :contract_amount
      t.string :item_of_works

      t.timestamps null: false
    end
  end
end
