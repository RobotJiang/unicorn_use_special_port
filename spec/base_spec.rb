require "spec_helper"

describe UnicornUseSpecialPort do
	let(:env) do
		env={}
		env
	end
	before do
		UnicornUseSpecialPort::BaseConfig.setup do |config|
			config[:port]=8080
	  end

	end
	it "dose can return a special port when calling request port" do
		request=ActionDispatch::Request.new(env)
		request.port().should == 8080
	end

end


