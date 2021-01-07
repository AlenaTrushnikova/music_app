class Playlist < ApplicationRecord
    belongs_to :playable, :polymorphic => true 
    has_many :songs_in_playlists, dependent: :destroy
    has_many :songs, through: :songs_in_playlists, dependent: :destroy
    validates :name, uniqueness: true, presence: true

    def playlist_search(search)
        if search  
            self.songs.where("lower(name) LIKE ?", "%" + search.downcase + "%")
        else
            self.songs
        end
    end

    def playlist_show(search)
        self.playlist_search(search).map { |song|
            {song_name: song.name,
            song_id: song.id,
            album_id: song.album_id,
            album_name: song.album.name,
            artist_id: song.album.artist_id,
            artist_name: song.album.artist.name,
             release_year: song.album.release_year}
        }
    end
end
