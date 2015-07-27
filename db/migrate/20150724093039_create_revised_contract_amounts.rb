class CreateRevisedContractAmounts < ActiveRecord::Migration
  def change
    create_table :revised_contract_amounts do |t|
      t.decimal :amount
      t.belongs_to :project, index:true,foreign_key:true

      t.timestamps null: false
    end
  end
end
