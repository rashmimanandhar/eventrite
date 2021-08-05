class Show < ApplicationRecord
  validates :artist, presence: true
  validates :venue, presence: true
  validates :event_on, presence: true
  belongs_to :artist
  belongs_to :venue
end
