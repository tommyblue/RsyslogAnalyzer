module Api
  module V1
    class HostsController < ApiController
      def hosts_with_counter
        @hosts = Log.select('DISTINCT(FromHost), COUNT(*) AS hits').group(:FromHost).order(:FromHost).map{ |l| { host: l.FromHost, hits: l.hits } }
      end
    end
  end
end
