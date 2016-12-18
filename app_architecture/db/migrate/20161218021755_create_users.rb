class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :display_name
      t.string :email
      t.string :country
      t.string :followers
      t.string :images
      t.string :credentials

      t.timestamps
    end
  end
end
