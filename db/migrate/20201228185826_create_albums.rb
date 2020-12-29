class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :release_year
      t.string :picture
      t.belongs_to :artist

      t.timestamps
    end
  end
end
