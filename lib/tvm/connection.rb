require "curb"

module Tvm
  
  class Connection < Query
  
    attr_reader :kaltura_session

    def initialize(username, password)
      session = User.new(username, password)
      ap session.resp
      @kaltura_session = session.resp["result"]["login_session"]["ks"]
    end

  end

end