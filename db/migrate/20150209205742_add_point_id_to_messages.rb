class AddPointIdToMessages < ActiveRecord::Migration
  def change
    add_reference :messages, :point, index: true
    add_foreign_key :messages, :points
  end
end
