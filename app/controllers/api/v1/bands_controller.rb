class Api::V1::BandsController < ApplicationController
    
    def index
        bands = Band.all 
        render json: bands 
    end 

    def show 
    end 

    def create 
    end 

    def update 
    end 

    def create 
    end 

    def destroy 
    end 

    private 

    def band_params 
        params.require(:band).permit(:name, :profile_img, :location, :bio, :email, :password)
    end 

end
