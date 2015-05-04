class UsersController < ApplicationController
  def index
  	@users = User.sorted
  end

  def show
  	@user = User.find(params[:id])
  end
end
