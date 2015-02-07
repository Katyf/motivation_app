class MessagesController < ApplicationController

  def index
    @task = Task.find(params[:task_id])
    @messages = @task.messages
  end

  def show
  end

  private

    def message_params
      params.require(:message).permit(:body_text)
    end

end
