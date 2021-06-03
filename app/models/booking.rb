class Booking < ApplicationRecord
    belongs_to :goat_ad
    belongs_to :user
end
