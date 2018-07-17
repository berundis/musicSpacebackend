class Api::V1::BandsController < ApplicationController

  before_action :set_band, only: [:show, :update, :destroy]

  def index
    bands = Band.all
    render json: bands, status: 200
  end

  def create
    @band = Band.new
    @band.name = params[:name]
    @band.password = params[:password]
    @band.email = params[:email]
    @band.genre = params[:genre]
    @band.state = params[:state]
    @band.city = params[:city]
    @band.bio = params[:bio]
    @band.profile_img = params[:profile_img]
    @band.profile_type = "band"

    if (@band.save)
      render json: @band, status: 200
    else
      render json: {
        errors: @band.errors.full_messages
      }, status: :unprocessable_entity
    end
  end


  def update
    @band.update(band_params)
    render json: @band, status: 200
  end

  def destroy
     bandId = @band.id
     @band.destroy
     render json: {message: "Band deleted!", bandId: bandId}
  end

  def show
    render json: @band, status: 200
  end

  private

  def band_params
    params.require(:band).permit(:name, :profile_img, :state, :city, :bio, :email, :password, :genre)
  end

  def set_band
    @band = Band.find(params[:id])
  end

end
