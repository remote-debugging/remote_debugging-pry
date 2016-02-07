require "remote_debugging/pry/version"
require "remote_debugging/pry/domain_handler"

module RemoteDebugging
  module Pry
    @pry_instances = []
    # Get the currently running pry instance, if there is none, create it.
    # When we do a binding.pry somewhere in the code, we should return that
    # pry instance instead of a new one.
    def self.current
      push(new_instance) if @pry_instances.empty?
      @pry_instances.last
    end

    def self.push(pry_instance)
      @pry_instances.push pry_instance
    end

    def self.pop
      @pry_instances.pop
    end

    def self.new_instance
      ::Pry.start
    end
  end
end
