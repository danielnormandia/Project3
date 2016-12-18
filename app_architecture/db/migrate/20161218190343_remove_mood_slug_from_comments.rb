class RemoveMoodSlugFromComments < ActiveRecord::Migration[5.0]
  def change
    remove_column :comments, :mood_slug, :string
  end
end
