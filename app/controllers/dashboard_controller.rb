class DashboardController < ApplicationController
  def index
    @logs = Log.last_50
  end
end
