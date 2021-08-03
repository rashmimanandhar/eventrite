class AddVenueAndArtistRefToShows < ActiveRecord::Migration[6.1]
  def change
    add_reference :shows, :artist, null: false, foreign_key: true
    add_reference :shows, :show, null: false, foreign_key: true
  end
end
