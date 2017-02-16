class Track < ApplicationRecord
  validates :name, :album_id, :ord, :track_type, presence: true
  validates :ord, uniqueness: true

  belongs_to :album
  belongs_to :band,
    through: :album,
    source: :band
end
