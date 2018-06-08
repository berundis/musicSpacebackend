class Api::V1::VenuesController < ApplicationController

  before_action :set_venue, only: [:show, :update, :destroy]

  def index
    venues = Venue.all
    render json: venues, status: 200
  end

  def create
    venue = Venue.create(venue_params)
    render json: venue, status: 201
  end


  def update
    @venue.update(venue_params)
    render json: @venue, status: 200
  end

  def destroy
     venueId = @venue.id
     @venue.destroy
     render json: {message: "Venue deleted!", venueId: venueId}
  end

  def show
    render json: @venue, status: 200
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :profile_img, :location, :description, :email, :password, :genres)
  end

  def set_venue
    @venue = Venue.find(params[:id])
  end
end 