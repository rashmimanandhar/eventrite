class Artist < ApplicationRecord
  validates :name, presence: true
  has_many :venues, through: :shows
  has_many :shows
end
