class PagesController < ApplicationController
  def home
    @challenges = Challenge.all
  end
end
