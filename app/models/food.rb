class Food < ApplicationRecord
  belongs_to :user
  has_many :food_review
  validates :name, presence: true
  validates :description, presence: true
end
