class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.string :title
      t.text :problem
      t.text :hypothesis
      t.text :materials
      t.text :procedure
      t.text :results
      t.text :conclusion
      t.integer :proposal_id
      t.boolean :active
      t.integer :start_date
      t.integer :end_date

      t.timestamps null: false
    end
  end
end
