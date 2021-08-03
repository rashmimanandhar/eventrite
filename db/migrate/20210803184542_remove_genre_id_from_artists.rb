class RemoveGenreIdFromArtists < ActiveRecord::Migration[6.1]
  def change
    remove_reference :artists, :genre, null: true, index: false
  end
end
