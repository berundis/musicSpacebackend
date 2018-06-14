class Api::V1::ShowsController < ApplicationController

  before_action :set_show, only: [:show, :update, :destroy]

  def index
    shows = Show.all
    newAll = []
    shows.each {|show| newAll.push({show: show, bands: show.bands})}
    render json: newAll, status: 200
  end
  #
  # def create
  #   show = Show.create(show_params)
  #   render json: show, status: 201
  # end
  #
  #
  # def update
  #   @show.update(show_params)
  #   render json: @show, status: 200
  # end
  #
  # def destroy
  #    showId = @show.id
  #    @show.destroy
  #    render json: {message: "Show deleted!", showId: showId}
  # end
  #
  # def show
  #   # render json: @show, status: 200
  # end
  #
  # private
  #
  # def show_params
  #   params.require(:show).permit(:name, :flyer)
  # end
  #
  # def set_show
  #   @show = Show.find(params[:id])
  # end

end
