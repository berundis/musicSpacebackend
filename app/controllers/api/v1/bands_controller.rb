class Api::V1::BandsController < ApplicationController

  before_action :set_band, only: [:show, :update, :destroy]

  def index
    bands = Band.all
    render json: bands, status: 200
  end

  def create
    band = Band.create(band_params)
    render json: band, status: 201
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
    params.require(:band).permit(:name, :profile_img, :location, :bio, :email, :password, :genre)
  end

  def set_band
    @band = Band.find(params[:id])
  end

end
