class Track < ApplicationRecord
  validates :name, :album_id, :ord, :track_type, presence: true
  validates :ord, uniqueness: true
end
