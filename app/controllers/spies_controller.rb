class SpiesController < ApplicationController
  def new
    @spy = Spy.new
    @pubs = Pub.all
    @regular = Regular.find(params[:regular_id])
  end

  def create
    @spy = Spy.new(spy_params)
    @regular = Regular.find(params[:regular_id])
    @spy.regular = @regular # assigning the regular id to the spy's hash
    if @spy.save
      redirect_to regular_path(@regular)
    else
      @pubs = Pub.all
      render :new, status: :unprocessable_entity
    end
  end

  private
  def spy_params
    params.require(:spy).permit(:note, :pub_id)
  end
end
