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
    # we can send different types of things (not only text)
    # see: https://developer.chrome.com/devtools/docs/console
    # example for a table:
    #   {"method":"Console.messageAdded","params":{"message":{"source":"console-api","level":"log","text":"[object Object]","timestamp":1454771792.47105,"type":"table","line":1893,"column":28,"url":"","executionContextId":2,"parameters":[{"type":"object","objectId":"{\"injectedScriptId\":2,\"id\":15}","className":"Object","description":"Object","preview":{"type":"object","description":"Object","lossless":true,"overflow":false,"properties":[{"name":"0","type":"object","valuePreview":{"type":"object","description":"Object","lossless":true,"overflow":false,"properties":[{"name":"firstName","type":"string","value":"John"},{"name":"lastName","type":"string","value":"Smith"}]}},{"name":"1","type":"object","valuePreview":{"type":"object","description":"Object","lossless":true,"overflow":false,"properties":[{"name":"firstName","type":"string","value":"Jane"},{"name":"lastName","type":"string","value":"Doe"}]}}]}}],"stackTrace":[{"functionName":"CommandLineAPIImpl.table","scriptId":"148","url":"","lineNumber":1893,"columnNumber":28},{"functionName":"bound","scriptId":"148","url":"","lineNumber":130,"columnNumber":35},{"functionName":"","scriptId":"206","url":"","lineNumber":6,"columnNumber":2},{"functionName":"InjectedScript._evaluateOn","scriptId":"148","url":"","lineNumber":875,"columnNumber":140},{"functionName":"InjectedScript._evaluateAndWrap","scriptId":"148","url":"","lineNumber":808,"columnNumber":34},{"functionName":"InjectedScript.evaluate","scriptId":"148","url":"","lineNumber":664,"columnNumber":21}]}}}
    # example for an array of things:
    #   {"method":"Console.messageAdded","params":{"message":{"source":"console-api","level":"log","text":"foo","timestamp":1454772138.52864,"type":"log","line":2,"column":9,"url":"","executionContextId":2,"parameters":[{"type":"string","value":"foo"},{"type":"number","value":3,"description":"3"},{"type":"string","value":"bar"},{"type":"object","objectId":"{\"injectedScriptId\":2,\"id\":41}","subtype":"array","className":"Array","description":"Array[3]","preview":{"type":"object","description":"Array[3]","lossless":true,"overflow":false,"properties":[{"name":"0","type":"number","value":"1"},{"name":"1","type":"number","value":"2"},{"name":"2","type":"number","value":"3"}],"subtype":"array"}}],"stackTrace":[{"functionName":"","scriptId":"304","url":"","lineNumber":2,"columnNumber":9},{"functionName":"InjectedScript._evaluateOn","scriptId":"148","url":"","lineNumber":875,"columnNumber":140},{"functionName":"InjectedScript._evaluateAndWrap","scriptId":"148","url":"","lineNumber":808,"columnNumber":34},{"functionName":"InjectedScript.evaluate","scriptId":"148","url":"","lineNumber":664,"columnNumber":21}]}}}
    # 'level' can be ['debug',log', warning', 'error']
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
