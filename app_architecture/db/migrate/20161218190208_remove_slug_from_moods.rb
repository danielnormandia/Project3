class RemoveSlugFromMoods < ActiveRecord::Migration[5.0]
  def change
    remove_column :moods, :slug, :string
  end
end
