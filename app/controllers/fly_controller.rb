class FlyController < ApplicationController
  before_action :parse_db

  def show
  end

  def write
    Writeable.create!(content: "written")
    render :show
  end

  def parse_db
    db = URI.parse(ENV['DATABASE_URL'])
    @db_host_port = "#{db.host}:#{db.port}"
  end
end
