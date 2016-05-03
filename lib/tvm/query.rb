require "curb"
require "json"

module Tvm
  module Query
  
  def post(url, body)
    req = Curl::Easy.http_post(url, json_body(body)) do |curl|
      curl.headers["Content-Type"] = "application/json"
    end

    return JSON.parse req.body_str
  end

  def json_body(body)
    return JSON.pretty_generate(body)
  end

  end
end
