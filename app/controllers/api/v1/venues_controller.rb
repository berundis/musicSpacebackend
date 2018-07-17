class Api::V1::VenuesController < ApplicationController

  before_action :set_venue, only: [:show, :update, :destroy]

  def index
    venues = Venue.all
    render json: venues, status: 200
  end

  def create
    @venue = Venue.new
    @venue.name = params[:name]
    @venue.password = params[:password]
    @venue.email = params[:email]
    @venue.state = params[:state]
    @venue.city = params[:city]
    @venue.profile_img = params[:profile_img]
    @venue.genres = params[:genres]
    @venue.description = params[:description]
    @venue.profile_type = "venue"

    if (@venue.save)
      render json: @venue, status: 200
    else
      render json: {
        errors: @venue.errors.full_messages
      }, status: :unprocessable_entity
    end
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
    params.require(:venue).permit(:name, :profile_img, :state, :city, :description, :email, :password, :genres)
  end

  def set_venue
    @venue = Venue.find(params[:id])
  end
end
