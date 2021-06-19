class FlyController < ApplicationController
  def show
     render text: ENV["DATABASE_URL"]
  end

  def write
    Writeable.create!(content: "written")
    render :show
  end
end
