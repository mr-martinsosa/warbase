class HomeController < ApplicationController
  def index 
    @response =  HTTParty.get("https://api.foursquare.com/v2/venues/search?ll=40.707984,-74.006486&v=20180606&client_id=#{ENV["FOURSQUARE_ID"]}&client_secret=#{ENV["FOURSQUARE_SECRET"]}")
    @response = HTTParty.get("https://api.foursquare.com/v2/venues/search?near=New_York,NY&v=20180606&client_id=#{ENV["FOURSQUARE_ID"]}&client_secret=#{ENV["FOURSQUARE_SECRET"]}")
    @foursquare_id = ENV["FOURSQUARE_ID"]
    @foursquare_secret = ENV["FOURSQUARE_SECRET"]
    @user = current_user
    #loop and first_or_create the locations nearby
    #grab lat/lng and put onto google map
  end

  # def foursquare
  #   @response = HTTParty.get("https://api.foursquare.com/v2/venues/search?ll=40.707984,-74.006486&v=20180606&client_id=#{ENV["FOURSQUARE_ID"]}&client_secret=#{ENV["FOURSQUARE_SECRET"]}")
  # end
end
