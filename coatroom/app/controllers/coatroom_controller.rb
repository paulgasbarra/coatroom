class CoatroomController < ApplicationController

  def index

  end

  def search
    @user_location = Geocoder.coordinates(params[:search_term])
    #use user location to find distance to all Checkers nearby

    @longitude = Checker.first.address
    @latitude =Checker.first.latitude
    @distance = Geocoder::Calculations.distance_between([Checker.first.longitude, Checker.first.latitude],[@user_location])
  end




end
