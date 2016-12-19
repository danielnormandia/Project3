class AddArtistSongToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :artist_name, :string
    add_column :comments, :track_name, :string
  end
end
