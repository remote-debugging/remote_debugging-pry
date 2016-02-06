module RemoteDebugging::Pry
  module DomainHandler
    ##
    # todo: send messageAdded messages for every log entry we want to show
    #       example message: {"method":"Console.messageAdded","params":{
    #                                                           "message":{
    #                                                             "source":"javascript",
    #                                                             "level":"error",
    #                                                             "text":"Uncaught Error: Attempting to use a disconnected port object",
    #                                                             "timestamp":1454756783.60243,
    #                                                             "type":"log",
    #                                                             "line":65,
    #                                                             "column":22,
    #                                                             "scriptId":"54",
    #                                                             "url":"extensions::messaging"
    #                                                           }
    #                                                         }}
    class Console < RemoteDebugging::DomainHandler::Base

      def receive(message:)
        case message.command
        # todo: implement
        # activate our hooks and stuff
        # no params in request
        when 'enable' then empty_response(message)

        else
          puts "TODO implement: #{message.id}"
          message
        end
      end

    end
  end
end
