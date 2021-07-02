class Movie < ApplicationRecord
  belongs_to :genre

  validates :title, presence: true, length: { minimum: 2 }
  validates :text, presence: true, length: { minimum: 2 }
  validates :ratings, presence: true
  validates :genre_id, presence: true
end
