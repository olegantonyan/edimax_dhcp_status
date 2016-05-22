require 'net/http'
require 'uri'

module EdimaxDhcpStatus
  class Resolver
    API_URI = 'http://api.macvendors.com'.freeze

    def call(mac)
      url = URI("#{API_URI}/#{mac}")
      Net::HTTP.get(url)
    end
  end
end
