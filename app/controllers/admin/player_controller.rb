class Admin::PlayersController < ApplicationController
  load_and_authorize_resource

  def index
  end

  def new
  end

  def edit
  end

  def create
    if @player.save
      flash[:success] = "admin.player.create_player_success"
      redirect_to admin_players_path
    else
      flash[:warning] = "admin.player.error"
      render :new
    end
  end

  def update
    if @player.update_attributes player_params
      flash[:success] = t "admin.player.update_player_success"
      respond_to do |format|
        format.html {redirect_to :back}
        format.js
     end
    else
      flash[:danger] = t "admin.player.update_player_error"
      render :edit
    end
  end

  def destroy
    @player.destroy
    flash[:success] = t "admin.player.delete_player_success"
    redirect_to admin_palyers_path
  end

  private
  def player_params
    params.require(:player).permit :name, :date_of_birth, :position,
      :jersey_number, :nationality
  end
end