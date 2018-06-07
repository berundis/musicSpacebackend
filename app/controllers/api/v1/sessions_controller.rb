class Api::V1::SessionsController < ApplicationController

  def create
    @user = Band.find_by(email: params["email"])
    if (@user && @user.authenticate(params["password"]))
      render json: token_json(@user)
    else
      render json: {
        errors: ["ERROR"]
      }, status: :unauthorized
    end
  end
end
