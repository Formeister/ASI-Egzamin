class Happening < ApplicationRecord
  belongs_to :user
  belongs_to :day
end
