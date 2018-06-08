class Band < ApplicationRecord
  has_secure_password
  has_many :band_shows
  has_many :shows, through: :band_shows 

end
