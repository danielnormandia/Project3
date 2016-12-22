class CreateMoods < ActiveRecord::Migration[5.0]
  def change
    create_table :moods do |t|
      t.string   :title
      t.integer  :user_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
