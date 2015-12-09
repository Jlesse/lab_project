class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.string :title
      t.text :problem
      t.text :hypothesis
      t.text :materials
      t.text :procedure
      t.integer :grad_hour_budget
      t.text :results
      t.text :conclusion
      t.integer :proposal_id
      t.boolean :active
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
