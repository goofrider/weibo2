module Weibo2
  class Error < StandardError
    attr_reader :response, :code, :description
  
    def initialize(response)
      response.error = self
      @response = response
      if response.parsed.is_a?(Hash)
        @code = response.parsed['error_code']
        @description = response.parsed['error']
        super( "#{@description} (#{@code})" )
      end
    end
  end
end
