class SessionsController < ApplicationController
  before_action :require_login, only: [:destroy]
  def create
      user = User.find_by(username: params[:username])
      if user&.authenticate(params[:password])
          session[:user_id] = user.id
          render json: user, status: :created
      else
          render json: { errors: ["Invalid username or password"] }, status: :unauthorized
      end 
  end

  def destroy
      session.delete :user_id
      head :no_content
  end

  private

  def require_login
      unless session[:user_id]
          render json: { errors: ["Unauthorized access"] }, status: :unauthorized
      end
  end
end

