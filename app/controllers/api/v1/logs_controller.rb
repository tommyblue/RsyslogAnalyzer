class Api::V1::LogsController < Api::V1::ApiController
  def index
    respond_with Log.last_50
  end
end
