class RegularsController < ApplicationController
  def index
    @regulars = Regular.all
  end

  def show

    @regular = Regular.find(params[:id])
  end

  def new
    @regular = Regular.new
  end

  def create
    @regular = Regular.new(regular_params)
    if @regular.save
      redirect_to regular_path(@regular)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def regular_params
    params.require(:regular).permit(:name, :favorite_drink, :photo)
  end
end
