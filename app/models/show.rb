class Show < ApplicationRecord
  has_many :band_shows 
  has_many :bands, through: :band_shows 
  belongs_to :venue
end
