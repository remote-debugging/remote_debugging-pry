require "remote_debugging/pry/domain_handler/debugger"
require "remote_debugging/pry/domain_handler/runtime"

module RemoteDebugging::Pry
  module DomainHandler
    def pry
      RemoteDebugging::Pry.current
    end
  end
end
