class Artwork < ApplicationRecord
  validates :title, :image_url, :artist_id, presence: true
  validates :title, uniqueness: {scope: :artist_id,
    message: "Title of piece must be unique to artist"}

  belongs_to :artist,
  primary_key: :id,
  foreign_key: :artist_id,
  class_name: "User"

  has_many :shares,
  primary_key: :id,
  foreign_key: :artwork_id,
  class_name: "ArtworkShare"

  has_many :shared_viewers,
  through: :shares,
  source: :viewer
end
