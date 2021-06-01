class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @goat_ads = GoatAd.all
  end
end
