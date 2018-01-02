class CreateArtworks < ActiveRecord::Migration[5.1]
  def change
    create_table :artworks do |t|
      t.string :title, null: false
      t.string :image_url, null: false
      t.integer :artist_id, null: false
      t.timestamps
    end

    add_index :artworks, [:artist_id, :title], unique: true
    add_index :artworks, :image_url
    add_index :artworks, :title
  end
end