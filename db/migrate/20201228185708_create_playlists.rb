class CreatePlaylists < ActiveRecord::Migration[6.1]
  def change
    create_table :playlists do |t|
      t.string :name 
      t.references :playable, polymorphic: true

      t.timestamps
    end
  end
end
