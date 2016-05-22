# EdimaxDhcpStatus

Gets active DHCP clients of Edimax BR6428n router and resolves their manufacturers via http://www.macvendors.com/

```sh
$ bin/edimax_dhcp_status '192.168.1.1' 'admin' '1234'
ip: 192.168.1.150, mac: b8:27:eb:df:51:1a, expires: 38334, manufacturer: RASPBERRY PI FOUNDATION
ip: 192.168.1.158, mac: b8:27:eb:03:a5:d8, expires: 37871, manufacturer: RASPBERRY PI FOUNDATION
ip: 192.168.1.152, mac: 20:16:d8:2f:0e:4a, expires: 29654, manufacturer: LITEON TECHNOLOGY CORPORATION
```

## Dependencies

- [PhantomJS](http://phantomjs.org/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'edimax_dhcp_status', github: 'olegantonyan/edimax_dhcp_status'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ git clone git@github.com:olegantonyan/edimax_dhcp_status.git
$ cd edimax_dhcp_status
$ bundle install
```

## Usage

From CLI run `bin/edimax_dhcp_status` with arguments: router's ip address, login, password:
```sh
$ bin/edimax_dhcp_status '192.168.1.1' 'admin' '1234'
ip: 192.168.1.150, mac: b8:27:eb:df:51:1a, expires: 38334, manufacturer: RASPBERRY PI FOUNDATION
ip: 192.168.1.158, mac: b8:27:eb:03:a5:d8, expires: 37871, manufacturer: RASPBERRY PI FOUNDATION
ip: 192.168.1.152, mac: 20:16:d8:2f:0e:4a, expires: 29654, manufacturer: LITEON TECHNOLOGY CORPORATION
```

From another Ruby application:
```ruby
require 'edimax_dhcp_status'
EdimaxDhcpStatus.run('192.168.1.1', 'admin', '1234') #=> [#<EdimaxDhcpStatus::DhcpAddr:0x007f5d72627fb0 @ip="192.168.1.150", @mac="b8:27:eb:df:51:1a", @expires="32353", @manufacturer="RASPBERRY PI FOUNDATION">, #<EdimaxDhcpStatus::DhcpAddr:0x007f5d726d0de0 @ip="192.168.1.158", @mac="b8:27:eb:03:a5:d8", @expires="31890", @manufacturer="RASPBERRY PI FOUNDATION">, #<EdimaxDhcpStatus::DhcpAddr:0x007f5d727431d8 @ip="192.168.1.152", @mac="20:16:d8:2f:0e:4a", @expires="23673", @manufacturer="LITEON TECHNOLOGY CORPORATION">]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/olegantonyan/edimax_dhcp_status. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
