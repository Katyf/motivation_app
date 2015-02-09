class PointsController < ApplicationController
  before_action :set_task
  def index
    @points = @task.points
  end

  def show
    @point = @task.points.find(params[:id])
  end

  def new
    @point = Point.new
  end

  def create
    @point = Point.new(point_params)
    @point.task = Task.find(params[:task_id])
    if @point.save
      flash[:success] = 'point successfully created.'
      redirect_to task_points_path(@point.task.id)
    else
      redirect_to root_path
    end
  end

private
  def set_task
    @task =Task.find(params[:task_id])
  end

  def point_params
    params.require(:point).permit(:statpoint)
  end

end
