module Tvm::Errors

  class Error < RuntimeError

  end

  class ServerError < Error
    attr_reader :type, :code, :message

    def initialize(options)
      puts "====xxxx======="
      ap options
      @type = options["objectType"]
      @code = options["code"]
      @message = options["message"]
      super "Type: #{@type}, Code: #{@code}, Message: #{@message}"
    end

  end

  # class ServerError < Error

  #   attr_reader :type, :code, :message, :details

  #   def initialize(options)
  #     @type = options[:type] || 'HTTP'
  #     @code = options[:code]
  #     @message = options[:message]
  #     @details = options[:details] || options[:detail] 
  #     if @details.nil? or @details.empty?
  #       @details = 'None'
  #     end
  #     super "Type: #{@type}, Code: #{@code}, Message: #{@message}, Details: #{@details}"
  #   end

  # end

  class ClientError < Error

  end

  class ValidationError < ClientError

  end

end