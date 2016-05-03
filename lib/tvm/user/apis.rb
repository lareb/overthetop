module Apis
	def sign_in_url
  		"#{Tvm::BASE_URL}/api_v3/service/OTTUser/action/login"
	end 

	def sign_up_url
		"#{Tvm::BASE_URL}/api_v3/service/OTTUser/action/add"
	end
end