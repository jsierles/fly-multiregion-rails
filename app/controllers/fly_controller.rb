class FlyController < ApplicationController
  def show
    db = URI.parse(ENV['DATABASE_URL'])
    @db_host_port = "#{db.host}#{db.port}"
  end

  def write
    Writeable.create!(content: "written")
    render :show
  end
end
