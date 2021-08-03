class Genre < ApplicationRecord
  has_many :venues
  has_many :artists
end
