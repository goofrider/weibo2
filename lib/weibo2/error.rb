module Weibo2
  class Error < OAuth2::Error
  
#    def initialize(response)
#      super(response)
#    end

    def set_response_code(response)
      if response.parsed.is_a?(Hash)
        @code = response.parsed['error_code']
        @description = response.parsed['error']
      end
    end

  end
end
