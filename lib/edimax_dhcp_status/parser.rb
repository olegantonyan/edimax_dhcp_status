require 'capybara'
require 'capybara/dsl'
require 'capybara/poltergeist'

require 'edimax_dhcp_status/dhcp_addr'

module EdimaxDhcpStatus
  class Parser
    include Capybara::DSL

    attr_reader :url

    def initialize(addr, login, password)
      Capybara.register_driver(:poltergeist) { |app| Capybara::Poltergeist::Driver.new(app, js_errors: false) }
      Capybara.default_driver = :poltergeist
      @url = "http://#{login}:#{password}@#{addr}/stadhcptbl.asp"
    end

    # rubocop: disable Metrics/AbcSize, Metrics/MethodLength
    def call
      Capybara.current_session.visit(url)
      result = []
      page.find('table[border="1"]').all('tr').each_with_index do |tr, i|
        next if i == 0 # skip table header
        result << DhcpAddr.new.tap do |addr|
          addr.ip =       tr.all('td')[0].text
          addr.mac =      tr.all('td')[1].text
          addr.expires =  tr.all('td')[2].text
        end
      end
      result
    end
    # rubocop: enable Metrics/AbcSize, Metrics/MethodLength
  end
end
