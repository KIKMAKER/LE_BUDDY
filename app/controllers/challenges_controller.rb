class ChallengesController < ApplicationController
  def index

    all_challenges = Challenge.all
    not_my_challenges = all_challenges.reject { |challenge| challenge.user == current_user }
    @challenges = not_my_challenges

  end

  def show
    @challenge = Challenge.find(params[:id])
    @booking = Booking.new

    @user = @challenge.user

    # @marker = @user.geocoded.map do |user|
    #   {
    #     lat: user.latitude,
    #     lng: user.longitude,
    # }
    # end
  end

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new(challenges_params)
    @challenge.user = current_user
    if @challenge.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @challenge = Challenge.find(params[:id])
    @challenge.destroy
    redirect_to challenges_path
  end

  private

  def challenges_params
    params.require(:challenge).permit(:title, :description, :category, :duration, :user_id, :photo)
  end
end
