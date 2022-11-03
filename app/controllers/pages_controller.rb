class PagesController < ApplicationController
  def home
    @users = User.all

    # The `geocoded` scope filters only flats with coordinates
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
    }
    end
  end
end
