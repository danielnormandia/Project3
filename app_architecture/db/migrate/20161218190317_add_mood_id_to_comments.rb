class AddMoodIdToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :mood_id, :integer
  end
end
