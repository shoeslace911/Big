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

  def destroy
    @regular = Regular.find(params[:id])
    @regular.destroy
  end

  def edit
    @regular = Regular.find(params[:id])
  end

  def update
    @regular = Regular.find(params[:id])
    if @regular.update(regular_params)
      redirect_to regular_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def regular_params
    params.require(:regular).permit(:name, :favorite_drink, :photo)
  end

  def regular_find

  end
end
