class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.date :event_on

      t.timestamps
    end
  end
end
