class PointsController < ApplicationController
  before_action :set_task
  def index
    @points = Point.all
  end

  def show
    @point = Point.find(params[:id])
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

  def edit
    @point = @task.points.find(params[:id])
  end

  def update

    @point = @task.point.find(params[:id])
    if @point.update_attributes(point_params)
      flash[:success] = 'point successfully updated.'
      redirect_to task_points_path(@task)
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
  def set_task
    @task =Task.find(params[:task_id])
  end

  def point_params
    params.require(:point).permit(:statpoint)
  end

end
