class AddPlaylistsToSongs < ActiveRecord::Migration[6.1]
  def change
    add_column :songs, :playlists, :text
  end
end
