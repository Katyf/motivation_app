class MessagesController < ApplicationController
  before_action :set_point

  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def edit
  end

  def create
    @message = Message.new(message_params)

    if @message.save
     redirect_to @message, notice: 'message was successfully created.'
    else
      render :new
    end
  end

  def update
    if @message.update_attributes(message_params)
      redirect_to message_path(@message), notice: 'message successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    Message.find(params[:id]).destroy
    redirect_to messages_path, notice: 'message successfully deleted.'
  end

  private
    def set_point
      @point = Point.find(params[:point_id])
    end

    def message_params
      params.require(:message).permit(:body)
    end
end
