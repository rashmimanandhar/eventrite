class UpdateColumnOfShows < ActiveRecord::Migration[6.1]
  def change
    remove_reference :shows, :show
    add_reference :shows, :venue, null: false, foreign_key: true
  end
end
