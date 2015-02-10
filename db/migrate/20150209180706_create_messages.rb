class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :body
      t.string :photo_url

      t.timestamps null: false
    end
  end
end
