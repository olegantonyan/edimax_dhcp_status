require 'edimax_dhcp_status/version'
require 'edimax_dhcp_status/parser'
require 'edimax_dhcp_status/resolver'

module EdimaxDhcpStatus
  def self.run(addr, login, password, resolve = true)
    result = Parser.new(addr, login, password).call
    result.each(&:resolve!) if resolve
    result
  end
end
