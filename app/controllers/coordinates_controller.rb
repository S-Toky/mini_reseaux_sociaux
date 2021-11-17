class CoordinatesController < ApplicationController

  before_action :authenticate_user!

  def index
    @coordinates = Coordinate.all
  end

  def new
    @coordinate = Coordinate.new
  end

  def create
    coordinate_params = params.require(:coordinate).permit(:username, :first_name, :last_name)
    @coordinate = Coordinate.create(coordinate_params)
    @coordinate.user_id = current_user.id
    if @coordinate.valid?
      @coordinate.save
      redirect_to user_path(current_user.id)
    else
      redirect_to new_coordinate_path
    end
  end

  def show
    @coordinate = current_user.coordinate
  end

  def edit
    @coordinate = Coordinate.find(params[:id])
  end

  def update
    coordinate_params = params.require(:coordinate).permit(:username, :first_name, :last_name)
    @coordinate = Coordinate.find(params[:id])
    if @coordinate.update(coordinate_params)
      redirect_to user_path(current_user.id)
    else
      render 'edit'
    end
  end

  def destroy
  end
  
end
