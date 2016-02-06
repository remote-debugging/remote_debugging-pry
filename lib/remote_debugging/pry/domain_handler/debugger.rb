module RemoteDebugging::Pry
  module DomainHandler
    ##
    # todo: send scriptParsed messages for every ruby file we want chrome to show
    #       example message: {"method":"Debugger.scriptParsed","params":{
    #                                                            "scriptId":"67",
    #                                                            "url":"extensions::utils",
    #                                                            "startLine":0,
    #                                                            "startColumn":0,
    #                                                            "endLine":175,
    #                                                            "endColumn":2,
    #                                                            "isContentScript":true
    #                                                          }}
    class Debugger < RemoteDebugging::DomainHandler::Base

      def receive(message:)
        case message.command
        # todo: implement
        # activate our hooks and stuff
        # no params in request
        when 'enable' then empty_response(message)

        # todo: implement
        # request provides params -> "params":{"state":"none"}
        # sniffed answer was empty
        when 'setPauseOnExceptions'   then empty_response(message)

        # todo: implement
        # request provides params -> "params":{"maxDepth":0}
        # sniffed answer was empty
        when 'setAsyncCallStackDepth' then empty_response(message)

        # todo: implement
        # request provides params -> "params":{"script":"","skipContentScripts":false}
        # sniffed answer was empty
        when 'skipStackFrames'        then empty_response(message)

        # todo: implement getScriptSource
        # request provides params -> "params":{"scriptId":"71"}
        # example answer:
        # {"id":24,"result":{"scriptSource":"..."}}
        when 'getScriptSource'        then empty_response(message)
        else
          puts "TODO implement: #{message.id}"
          message
        end
      end

    end
  end
end
