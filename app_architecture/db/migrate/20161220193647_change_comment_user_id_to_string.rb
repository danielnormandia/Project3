class ChangeCommentUserIdToString < ActiveRecord::Migration[5.0]
  def change
    change_column :comments, :user_id,  :string
  end
end
