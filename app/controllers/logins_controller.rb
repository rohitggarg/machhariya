class LoginsController < ApplicationController
  before_filter :authenticate_user!, only: [:show]
  def new
    redirect_to "/auth/#{params[:provider]}"
  end

  def create
    auth = request.env["omniauth.auth"]
    user = current_user || (SocialSite.where(:name => auth['provider'], 
                               :user_identifier => auth['uid'].to_s).first.try(:user) || 
                        User.create_with_omniauth(auth))
    reset_session
    session[:user_id] = user.id
    user.update_with_omniauth(auth)
    redirect_to root_url, :notice => 'Signed in!'
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => 'Signed out!'
  end

  def failure
    redirect_to root_url, :alert => "Authentication error: #{params[:message].humanize}"
  end

  def show
    render json: current_user
  end
end