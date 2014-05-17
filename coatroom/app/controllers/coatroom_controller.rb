class CoatroomController < ApplicationController

  def index
  end

  def search
    @user_location = Geocoder.coordinates(params[:search_term])
    @search_results = Checker.all #geocoded # near(@user_location, 1)    # venues within 20 miles of a point
  end




end
