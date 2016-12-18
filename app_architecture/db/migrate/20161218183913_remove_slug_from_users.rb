class RemoveSlugFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :slug, :string
  end
end
