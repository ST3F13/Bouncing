class GoatAd < ApplicationRecord
  validates :name, :age, :address, :longitude, :latitude, :description,
            :price_per_day, :features, presence: true
  validates :name, length: { minimum: 2 }
  validates :description, length: { minimum: 20 }
end
