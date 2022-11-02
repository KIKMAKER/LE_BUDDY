class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @challenges = Challenge.all.sample(12)
  end

  def dashboard
    @user = current_user
  end

end
