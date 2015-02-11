class CreateGmessages < ActiveRecord::Migration
  def change
    create_table :gmessages do |t|
      t.string :body
      t.string :photo_url
      t.belongs_to :point, index: true

      t.timestamps null: false
    end
    add_foreign_key :gmessages, :points
  end
end
