class CoatroomController < ApplicationController

  def index
  end

  def search
    @search_term = params[:search_term]
    @user_location = Geocoder.coordinates(params[:search_term])
    @search_results = Checker.all #geocoded # near(@user_location, 1)    # venues within 20 miles of a point
  end

  def dropoff
    @checker = Checker.find(params[:id])
  end

end
