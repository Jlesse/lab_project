class CreateObservations < ActiveRecord::Migration
  def change
    create_table :observations do |t|
      t.string :title
      t.text :text
      t.integer :experiment_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
