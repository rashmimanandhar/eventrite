class RemoveCityFromArtists < ActiveRecord::Migration[6.1]
  def change
    remove_reference :artists, :city, null: false, foreign_key: true
  end
end
