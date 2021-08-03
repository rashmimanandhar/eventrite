class Artist < ApplicationRecord
  belongs_to :city
  belongs_to :genre

  has_many :venues, through: :shows
  has_many :shows
end
