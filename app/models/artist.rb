class Artist < ApplicationRecord
  belongs_to :city
  belongs_to :genre
end
