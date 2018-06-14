class Api::V1::ShowsController < ApplicationController

  before_action :set_show, only: [:show, :update, :destroy]

  def index
    shows = Show.all
    newAll = []
    shows.each {|show| newAll.push({show: show, bands: show.bands})}
    render json: newAll, status: 200
  end

  def create
    @show = Show.new
    @show.name = params[:name]
    @show.flyer = params[:flyer]
    @show.venue_id = params[:venue_id]
    @show.band_ids = params[:band_ids]
    if (@show.save)
      render json: @show
    else
      render json: {
        errors: @show.errors.full_messages
      }, status: :unprocessable_entity
    end
  end


  def update
    @show.update(show_params)
    render json: @show, status: 200
  end

  def destroy
     showId = @show.id
     @show.destroy
     render json: {message: "Show deleted!", showId: showId}
  end

  def show
    newShow = {show: @show, bands: @show.bands}
    render json: newShow, status: 200
  end

  private

  def show_params
    params.require(:show).permit(:name, :flyer, :venue_id, :band_ids)
  end

  def set_show
    @show = Show.find(params[:id])
  end

end
