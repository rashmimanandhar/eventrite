class City < ApplicationRecord
  has_many :artists
  has_many :venues
end
