class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :due_by
      t.string :est_time
      t.string :status

      t.timestamps null: false
    end
  end
end
