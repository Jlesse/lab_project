class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.text :text
      t.integer :experiment_id

      t.timestamps null: false
    end
  end
end
