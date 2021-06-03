class GoatAdsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR features ILIKE :query OR address ILIKE :query"
      @goat_ads = GoatAd.where(sql_query, query: "%#{params[:query]}%")
    elsif params[:feature].present?
      @feature = params[:feature]
      @goat_ads = GoatAd.where(features: @feature)
    else
      @goat_ads = GoatAd.all
    end
    @markers = @goat_ads.geocoded.map do |goat_ad|
      {
        lat: goat_ad.latitude,
        lng: goat_ad.longitude
      }
    end
  end

  def show
    @goat_ad = GoatAd.find(params[:id])
    @booking = Booking.new
  end

  def new
    @goat_ad = GoatAd.new
  end

  def create
    @goat_ad = GoatAd.new(goat_ad_params)
    @goat_ad.user_id = current_user.id
    if @goat_ad.save!
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
    params.require(:goat_ad).permit(:id, :name, :age, :address, :latitude, :longitude, :description, :price_per_day,
                                    :features, :start_available, :end_available, medias: [])
  end
end
