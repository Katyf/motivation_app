class gmessagesController < ApplicationController
  before_action :set_point

  def index
    @gmessages = Gmessage.all
  end

  def show
    @gmessage.find(params[:id])
  end

  def new
    @gmessage = Gmessage.new
  end

  def edit
  end

  def create
    @gmessage = Gmessage.new(gmessage_params)
    @gmessage.point = Point.find(params[:point_id])

    if @gmessage.save
     redirect_to @gmessage, notice: 'message was successfully created.'
    else
      render :new
    end
  end

  def update
    if @gmessage.update_attributes(gmessage_params)
      redirect_to gmessage_path(@gmessage), notice: 'message successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    gmessage.find(params[:id]).destroy
    redirect_to gmessages_path, notice: 'message successfully deleted.'
  end

  private
    def set_point
      @point = Point.find(params[:point_id])
    end

    def gmessage_params
      params.require(:gmessage).permit(:body, :photo_url)
    end
end
