class PubsController < ApplicationController
  def index
    # able to make a pub
    @pubs = Pub.all
  end

  def new
    @pubs = Pub.new
  end

  def create
    @pubs = Pub.new(pub_params)
    if @pubs.save
      redirect_to pubs_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def pub_params
    params.require(:pub).permit(:name, :location, :rating)
  end
end
