class Happening < ApplicationRecord
  belongs_to :user
  belongs_to :day
  validates :year,  presence: true, numericality: true, length: { minimum: 1, maximum: 4 }
  validates :body,  presence: true, length: { maximum: 150 }
end
