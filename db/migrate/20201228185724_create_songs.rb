class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.belongs_to :album

      t.timestamps
    end
  end
end
