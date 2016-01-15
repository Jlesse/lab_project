class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.integer :user_id
      t.integer :experiment_id
      t.string :comment
      t.integer :observation_id
      t.integer :hours_worked
      t.timestamps null: false
    end
  end
end
