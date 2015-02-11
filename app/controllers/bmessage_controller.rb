class BmessagesController < ApplicationController
  before_action :set_point

  def index
    @bmessages = Bmessage.all
  end

  def show
    @bmessage.find(params[:id])
  end

  def new
    @bmessage = Bmessage.new
  end

  def edit
  end

  def create
    @bmessage = Bmessage.new(bmessage_params)
    @bmessage.point = Point.find(params[:point_id])

    if @bmessage.save
     redirect_to @bmessage, notice: 'message was successfully created.'
    else
      render :new
    end
  end

  def update
    if @bmessage.update_attributes(bmessage_params)
      redirect_to bmessage_path(@bmessage), notice: 'message successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    bmessage.find(params[:id]).destroy
    redirect_to bmessages_path, notice: 'message successfully deleted.'
  end

  private
    def set_point
      @point = Point.find(params[:point_id])
    end

    def bmessage_params
      params.require(:bmessage).permit(:body, :photo_url)
    end
end
