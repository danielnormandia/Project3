class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :user_id
      t.string :mood_slug
      t.datetime :created_at

      t.timestamps
    end
  end
end
