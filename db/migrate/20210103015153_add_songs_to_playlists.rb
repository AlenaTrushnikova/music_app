class AddSongsToPlaylists < ActiveRecord::Migration[6.1]
  def change
    add_column :playlists, :songs, :text
  end
end
