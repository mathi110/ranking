class UsersController < ApplicationController
  def index
  	@users = User.sorted
  end

  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new({:name => "Default"})
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to(:action => 'index')
  	else
  		render('new')
    end
  end

private
	def user_params
		params.require(:user).permit(:name)
	end
end
