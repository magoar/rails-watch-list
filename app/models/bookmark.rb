class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  # validations
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id,
    message: "should only be one bookmark for one specific movie and list" }
end
