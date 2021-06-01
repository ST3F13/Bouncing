class PagesController < ApplicationController
  def home
    @goat_ads = GoatAd.all
  end
end
