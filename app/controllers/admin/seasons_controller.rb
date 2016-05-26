class Admin::SeasonsController < ApplicationController
  load_and_authorize_resource

  def index
  end

  def new
  end

  def create
    if @season.save
      flash.now[:success] = t "admin.season.create_success"
      redirect_to admin_seasons_path
    else
      flash[:warning] = t "admin.season.wrong" 
      render :new
    end
  end

  def update
    if @season.update_attributes season_params
      flash[:success] = t "admin.season.update_season_success"
      respond_to do |format|
        format.html {redirect_to :back}
        format.js
      end
    else
      flash[:danger] = t "admin.season.update_season_error"
      render :edit
    end
  end

  def destroy
    @season.destroy
    flash[:success] = t "admin.season.delete_season_success"
    redirect_to admin_seasons_path
  end

  private
  def season_params
    params.require(:season).permit :name, :description, :number_of_team,
      :number_of_match
  end
end
