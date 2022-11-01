class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.all
  end

  def show
    @challenge = Challenge.find(params[:id])
  end

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new(challenges_params)
    if @challenge.save
      redirect_to challenge_path(@challenge)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @challenge = Challenge.find(challenges_params)
    @challenge.destroy
  end

  private

  def challenges_params
    params.require(:challenge).permit(:name, :description, :category, :duration)
  end
end
