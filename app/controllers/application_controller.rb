class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :load_hosts

  private

    def load_hosts
      @hosts = Log.select('DISTINCT(FromHost), COUNT(*) AS hits').group(:FromHost).order(:FromHost).map{ |l| { host: l.FromHost, hits: l.hits } }
    end
end
