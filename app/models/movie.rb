class Movie < ApplicationRecord
  validates :title, presence: true, length: { minimum: 2 }
  validates :text, presence: true, length: { minimum: 2 }
  validates :ratings, presence: true, length: { minimum: 1 }
  validates :category, presence: true, length: { minimum: 2 }
end
