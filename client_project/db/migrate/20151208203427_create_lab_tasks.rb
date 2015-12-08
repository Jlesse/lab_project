class CreateLabTasks < ActiveRecord::Migration
  def change
    create_table :lab_tasks do |t|
      t.integer :procedure_id
      t.integer :log_id
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
