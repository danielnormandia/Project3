class AddUriToComment < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :uri, :string
  end
end
