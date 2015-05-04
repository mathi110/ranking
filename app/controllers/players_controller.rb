class PlayersController < ApplicationController
  def index
  	@players = Player.sorted
  end

  def show
  	@player = Player.find(params[:id])
  end

  def new
  	@player = Player.new({:name => "Default"})
  end

  def create
    # Instantiate a new object using form parameters
    @player = Player.new(player_params)
    # Save the object
    if @player.save
      # If save succeeds, redirect to the index action
      redirect_to(:action => 'index')
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end

  private

    def player_params
      # same as using "params[:subject]", except that it:
      # - raises an error if :subject is not present
      # - allows listed attributes to be mass-assigned
      params.require(:player).permit(:name)
    end

end
