class RegularsController < ApplicationController
  def index
    @regulars = Regular.all
  end

  def new
    # able to make new drunkard
  end

  def create

  end
end
