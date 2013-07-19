module UnicornUseSpecialPort
	class BaseConfig
		@config={}

		def self.setup
			if block_given?
				yield(@config)
			end
		end
		def self.config
			@config
		end
	end
end
