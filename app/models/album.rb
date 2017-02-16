class Album < ApplicationRecord
  validates :name, :band_id, :album_type, :year, presence: true
  validates :name, :uniqueness => { :scope => :band_id, :message => "This album has already been created for this band." }

  belongs_to :band
  has_many :tracks
end
