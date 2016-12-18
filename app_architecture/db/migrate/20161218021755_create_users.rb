class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :display_name
      t.string :email
      t.string :country
      t.hash   :followers
      t.array  :images
      t.hash   :credentials

      t.timestamps
    end
  end
end
