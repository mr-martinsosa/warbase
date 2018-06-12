class BasesController < ApplicationController
  skip_before_action :verify_authenticity_token

  respond_to :json

  def index
    @base =  Base.all
    respond_to do |format|
      format.html
      format.json {render json: @base}
    end
  end

  def new
    @base =  Base.new
    respond_to do |format|
      format.html
      format.json {render json: @base}
    end
  end

  def create
    rand = Random.new
    @base = Base.where(name: params[:name]).first_or_create do |base|
      base.lat = params[:lat] 
      base.lng = params[:lng]
      base.atk =  rand.rand(5)
      base.def = rand.rand(3)
      base.hp = rand.rand(40)    
      base.user_id = 1
    end

    if @base.save
      p "Base created"
    else
      p "Base creation failed"
    end
  end
end
