class PubsController < ApplicationController
  def index
    # able to make a pub
    @pubs = Pub.all
  end
end
