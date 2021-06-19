class FlyController < ApplicationController

  def show
     render text: ENV["DATABASE_URL"]
  end
end
