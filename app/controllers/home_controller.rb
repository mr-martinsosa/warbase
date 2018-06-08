class HomeController < ApplicationController
  def index 
  end

  def foursquare
    @response = HTTParty.get("https://api.foursquare.com/v2/venues/search?ll=40.707984,-74.006486&v=20180606&client_id=0YUPCI0DFNRU5TXUXKQHKTWBPZFTHAMIJ0PJOHMJHFBKW144&client_secret=IFLDRC22ZHX1IU4KQEIWOFKYBSVESEISXPQAMC1GYOOH0OMY")
    render "home/foursquare", :layout => false
  end
end
