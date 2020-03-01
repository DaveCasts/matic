class Coach::TeamsController < ApplicationController
  before_action :authenticate_user!

  def new 
    @team = Team.new
  end

  def create
    @team = current_user.teams.create(team_params)
    if @course.valid?
      redirect_to coach_team_path(@team)
    else
      render :new, status: :unprocessable_entity
    end

  end

  def show
    @team = Team.find(params[:id])
  end

  private

  def team_params
    params.require(:team).permit(:Name, :message, :size, :email) 
  end
end
