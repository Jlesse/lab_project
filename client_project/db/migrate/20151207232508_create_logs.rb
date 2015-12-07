class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.integer :procedure_id
      t.integer :user_id
      t.string :comment
      t.integer :observation_id

      t.timestamps null: false
    end
  end
end
