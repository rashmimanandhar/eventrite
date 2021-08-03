class Venue < ApplicationRecord
  belongs_to :city

  has_many :artists, through: :shows
  has_many :shows
end
