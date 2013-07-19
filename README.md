## Description    

	If your rails app running on a special port(none 80 port) under Nginx + Unicorn.     
	then all redirect action in your rails app will be leaded to http 80 port, this may be not you want. 

	When you deploy rails use Nginx + Unicorn, but you want to use a special port (e.g. 8080, 3000, and so on).

	To use this gem, to config a special port in your production.rb file, above all problems will be resolved.


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
		config[:port]= xxxx #use your custom port, e.g. : 8080     
	end	   

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
