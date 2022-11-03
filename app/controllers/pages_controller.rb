class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: :home
  
  def home
    @users = User.all
    @challenges = Challenge.all.sample(12)

    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
    }
    end
  end

  def dashboard
    @user = current_user
  end

end
