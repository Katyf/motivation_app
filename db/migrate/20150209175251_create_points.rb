class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.integer :statpoint
      t.belongs_to :task, index: true
    end
    add_foreign_key :points, :tasks
  end
end
