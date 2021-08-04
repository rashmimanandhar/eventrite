class Venue < ApplicationRecord
  validates :name, presence: true
  belongs_to :city

  has_many :artists, through: :shows
  has_many :shows
end
