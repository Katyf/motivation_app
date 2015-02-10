class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.integer :statpoint
    end
  end
end
