class MessagesController < ApplicationController

  def index
    @task = Task.find(params[:task_id])
    @messages = @task.messages
  end

  def show
    @task = Task.find(params[:task_id])
    @message = @task.message.find(params[:id])
  end

  def new
    @task = Task.find(params[:task_id])
    @message = @task.messages.new
  end

  def create
    @task = Task.find(params[:task_id])
    @message = @task.messages.new(messages_params)

    if @message.save
      redirect_to task_messages_path(@task)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @task = Task.find(params[:task_id])
      if @message.update(messages_params)
        redirect_to task_messages_path(@task), notice: 'message was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @task = task.find(params[:task_id])
    @task.messages.destroy
    redirect_to task_messages_path(@task), notice: 'message deleted.'
  end


  private

    def messages_params
      params.require(:message).permit(:body_text)
    end

end
