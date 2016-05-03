require "curb"

module Tvm
  
  class Connection #< Query
  
    attr_reader :kaltura_session

    def initialize(username, password)
      session = User.sign_in(username, password)
      ap session
      @kaltura_session = session["result"]["login_session"]["ks"]
    end

  end

end