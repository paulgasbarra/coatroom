class CoatroomController < ApplicationController

  def index
  end

  def search
    @search_term = params[:search_term]
    @user_location = Geocoder.coordinates(params[:search_term])
    @search_results = Checker.where(active: true) #and Checker.near(@user_location(1))
  end

  def confirmation
    @checker = Checker.find(params[:id])
    @time = params[:dropoff_time]
    @day = params[:dropoff_day]
  end

end
