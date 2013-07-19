# UnicornUseSpecialPort

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:
		group :production do
    	gem 'unicorn_use_special_port'
		end

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install unicorn_use_special_port

## Usage

Add this lines to your config/environments/production.rb
		
		UnicornUseSpecialPort::BaseConfig.setup do |config|
			config[:port]= xxxx #use your custom port, like : 8080
	  end	

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
