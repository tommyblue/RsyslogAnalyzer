module Api
  module V1
    class HostsController < ApiController
      def index
        respond_with Log.select('DISTINCT(FromHost) AS hostname, COUNT(*) AS hits').group(:FromHost).order(:FromHost).map{ |l| { hostname: l.hostname, hits: l.hits } }
      end
    end
  end
end
