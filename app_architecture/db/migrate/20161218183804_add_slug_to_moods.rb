class AddSlugToMoods < ActiveRecord::Migration[5.0]
  def change
    add_column :moods, :slug, :string
  end
end
