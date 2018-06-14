class ApplicationController < ActionController::API

  def jwt_password
    ENV["JWT_PASSWORD"]
  end

  #### BAND or VENUE
  def generate_token(user)
    puts ENV["JWT_PASSWORD"]
    puts "hi"
    JWT.encode({"user_id": user.id}, jwt_password, 'HS256')
  end

  def token_json(user)
    {
      email: user.email,
      user_id: user.id,
      profile_type: user.profile_type,
      token: generate_token(user)
    }
  end

  def try_decode_token
    token = request.headers["Authorization"]
    begin
      decoded = JWT.decode(token, jwt_password, true, { algorithm: "HS256"})
    rescue JWT::VerificationError
      puts "verification error"
      return nil
    end
    decoded
  end

  def current_user_id
    decoded = try_decode_token
    p decoded
    unless decoded && decoded[0] && decoded[0]["user_id"]
      return nil
    end
    decoded[0]["user_id"]
  end

  def valid_token?
    !!try_decode_token
  end

end
