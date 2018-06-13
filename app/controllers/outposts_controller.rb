class OutpostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  respond_to :json

  def index
    @base =  Outpost.all
    respond_to do |format|
      format.html
      format.json {render json: @base}
    end
  end

  def new
    @base =  Outpost.new
    respond_to do |format|
      format.html
      format.json {render json: @base}
    end
  end

  def create
    rand = Random.new
    @outpost = Outpost.where(name: params[:name]).first_or_create do |outpost|
      outpost.lat = params[:lat] 
      outpost.lng = params[:lng]
      outpost.atk =  rand.rand(10)
      outpost.def = rand.rand(7)
      outpost.hp = rand.rand(40)    
      outpost.user_id = 1
    end

    if @outpost.save
      p "Base created"
    else
      p "Base creation failed"
    end
  end

  def update
    @outpost = Outpost.where(name: params[:location]).first
    if(@outpost == nil)
      return
    end
    p "#{@outpost} HUFMJREKFEYRWKFREJfkmewrfjirewf11111111111111111111111111111!!!!!!!!!!!!"
   
    @outpost.update(:lat => params[:lat], :name => params[:location], :lng => params[:lng], :atk => params[:atk], :def => params[:def], :hp => params[:hp], :user_id => params[:user_id])

  end
end
