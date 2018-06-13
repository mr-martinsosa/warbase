class UsersController < ApplicationController
  def index
    @users = User.all 
  end

  def all
    @users = User.all
    respond_to do |format|
      format.html
      format.json {render json: @users}
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(current_user.id)
    @user.update(:hp => params[:hp])
  end
end
