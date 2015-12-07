class CreateResearcherExperiments < ActiveRecord::Migration
  def change
    create_table :researcher_experiments do |t|
      t.integer :researcher_id
      t.integer :experiment_id
      t.integer :admin_id

      t.timestamps null: false
    end
  end
end
