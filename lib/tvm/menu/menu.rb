require "curb"

module Tvm

  require 'tvm/menu/apis'
  require 'tvm/menu/params'

  class Menu
    extend Apis, Params, Query, Utils

    attr_reader :id, :resp

    def self.get(id)
      @id = id
      raise Tvm::Errors::ValidationError, 'Please provide a valid id' if @id.nil?
      menu = post(url, params(id))

      if menu.empty?
        raise Tvm::Errors::ServerError.new({"objectType": "", "message": "Menu not found"})
      else
        @menu = menu
      end      
    end 

  end

end
