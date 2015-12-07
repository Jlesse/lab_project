class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.integer :experiment_id
      t.text :abstract
      t.string :proposed_funding

      t.timestamps null: false
    end
  end
end
