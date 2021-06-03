class GoatAd < ApplicationRecord
  has_one_attached :media
  validates :name, :age, :description,
            :price_per_day, :features, presence: true
  validates :name, length: { minimum: 2 }
  validates :description, length: { minimum: 20 }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_name_and_features,
    against: [ :name, :features ],
    using: {
      tsearch: { prefix: true } 
    }
end
