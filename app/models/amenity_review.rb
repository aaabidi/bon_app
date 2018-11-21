class AmenityReview < ApplicationRecord
  belongs_to :amenity
  belongs_to :user
end
