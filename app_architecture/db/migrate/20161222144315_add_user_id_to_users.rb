class AddUserIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :spotify_id, :string
  end
end
