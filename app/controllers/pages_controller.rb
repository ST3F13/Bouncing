class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @goat_ads = GoatAd.all

     @markers = @goat_ads.geocoded.map do |goat_ad|
      {
        lat: goat_ad.latitude,
        lng: goat_ad.longitude
      }
    end
  end
end
