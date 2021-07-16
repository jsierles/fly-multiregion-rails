class FlyController < ApplicationController
  before_action :parse_db

  def show
  end

  def write
    Writeable.create!(content: "written")
    render :show
  end

  def exception
    if Fly.configuration.in_secondary_region?
      raise PG::ReadOnlySqlTransaction
    end
    render :show
  end

  def parse_db
    return unless ENV['DATABASE_URL']
    db = URI.parse(ENV['DATABASE_URL'])
    @db_host_port = "#{db.host}:#{db.port}"
  end
end
