class GoatAdsController < ApplicationController
  def index
    @goat_ads = GoatAd.all
         @markers = @goat_ads.geocoded.map do |goat_ad|
      {
        lat: goat_ad.latitude,
        lng: goat_ad.longitude
      }
    end
  end

  def show
    @goat_ad = GoatAd.find(params[:id])
  end

  def new
    @goat_ad = GoatAd.new
    
  end

  def create
    @goat_ad = GoatAd.new(goat_ad_params)
    if @goat_ad.save
      redirect_to goat_ad_path(@goat_ad)
    else
      render :new
    end
  end

  def edit
    @goat_ad = GoatAd.find(params[:id])
  end

  def update
    @goat_ad = GoatAd.find(params[:id])
    @goat_ad.update(goat_ad_params)
    redirect_to goat_ad_path(@goat_ad)
  end

  def destroy
    @goat_ad = GoatAd.find(params[:id])
    @goat_ad.destroy
    redirect_to goat_ads_path
  end

  private

  def goat_ad_params
    params.require(:goat_ad).permit(:id, :name, :age, :longitude, :latitude, :description, :price_per_day, :features)
  end
end
