class GoatAd < ApplicationRecord
  validates :name, :age, :address, :longitude, :latitude, :description,
            :price_per_day, :features, :medias, :start_available,
            :end_available, presence: true
end
