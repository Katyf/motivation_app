class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  def index
    @tasks = Task.all
  end

  # GET /tasks/1
  def show
  end

  # GET /testers/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)

    if @task.save
     redirect_to @task, notice: 'Task was successfully created.'
    else
      render :new
    end
  end

  # PATCH /tasks/1
  def update
    if @task.update_attributes(task_params)
      redirect_to task_path(@task), notice: 'Task successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tasks/1
  def destroy
    Task.find(params[:id]).destroy
    redirect_to tasks_path, notice: 'Task successfully deleted.'
  end

  private
    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:name, :due_by, :est_time, :status)
    end
end
