require 'active_support/core_ext/module/attribute_accessors'
require 'active_support/core_ext/hash/slice'

module ActionDispatch
  module Http
    module URL
      def port
				@port ||= begin
					if raw_host_with_port =~ /:(\d+)$/
						$1.to_i
					else
						standard_port
					end
				end
				if @port==80
					special_config=UnicornUseSpecialPort::BaseConfig.config
					if !special_config.empty? and (special_config[:port] or special_config['port'])
						@port= (special_config[:port] || special_config['port']).to_i
					end
				end
				@port
      end
		end
	end


end
