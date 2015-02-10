class PointsController < ApplicationController
  before_action :set_point, only: [:show, :edit, :update, :destroy]
  def index
    @points = Point.all
  end

  def show
  end

  def new
    @point = Point.new
  end

  def create
    @point = Point.new(point_params)

    if @point.save
      flash[:success] = 'point successfully created.'
      redirect_to @point
    else
      redirect_to root_path
    end
  end

  def edit
  end

  def update
    if @point.update_attributes(point_params)
      flash[:success] = 'point successfully updated.'
      redirect_to point_path(@point)
    else
      render :edit
    end
  end

  def destroy
    @point = @task.points.find(params[:id])
    @point.destroy
    flash[:success] = 'point successfully deleted.'
    redirect_to task_points_path
  end

private
  def set_point
    @point = Point.find(params[:id])
  end

  def point_params
    params.require(:point).permit(:statpoint)
  end

end
