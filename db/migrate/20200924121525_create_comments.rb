class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :event_id
      t.text :name,null: false
      t.integer :temperature_id
      t.text :image
      t.text :text,null: false
      t.timestamps
    end
  end
end
