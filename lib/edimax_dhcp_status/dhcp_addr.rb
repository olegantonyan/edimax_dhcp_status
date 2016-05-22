require 'edimax_dhcp_status/resolver'

module EdimaxDhcpStatus
  class DhcpAddr
    attr_accessor :ip, :mac, :expires
    attr_reader :manufacturer

    def resolve!
      @manufacturer = Resolver.new.call(mac)
    end

    def to_s
      "ip: #{ip}, mac: #{mac}, expires: #{expires}, manufacturer: #{manufacturer}"
    end
  end
end
