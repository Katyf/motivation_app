class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :body_text
      t.belongs_to :task, index: true

      t.timestamps null: false
    end
    add_foreign_key :messages, :tasks
  end
end
