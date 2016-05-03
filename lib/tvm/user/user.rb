require "curb"

module Tvm

  require 'tvm/user/apis'
  require 'tvm/user/params'

  class User
    extend Apis, Params, Query, Utils

    attr_reader :id, :username, :password, :resp, :email, :first_name, :last_name, :address, :city, :zip, :country, :phone, :username, :password, :kaltura_session

    #Create a new user
    def self.sign_up(email, first_name, last_name, address, city, zip, country, phone, username, password)
      raise Tvm::Errors::ValidationError, 'First Name can not be empty' if first_name.nil?
      raise Tvm::Errors::ValidationError, 'Invalid email id' unless is_valid_email?(email)
      raise Tvm::Errors::ValidationError, 'Email can not be empty' if email.nil?
      raise Tvm::Errors::ValidationError, 'Invalid username' if username.nil?
      raise Tvm::Errors::ValidationError, 'Invalid Password' if password.nil?  

      resp = post(sign_up_url, sign_up_params(email, first_name, last_name, address, city, zip, country, phone, username, password))

      if resp["result"].has_key?("error")
        raise Tvm::Errors::ServerError.new(resp["result"]["error"])
      else
        user = resp["result"]
        return {id: user["id"], email: user["email"], username: user["username"], first_name: user["first_name"], 
          last_name: user["last_name"], address: user["address"], phone: user["phone"], zip: user["zip"],
          city: user["city"], 
        }
      end
    end

    def self.sign_in(username, password)
      raise Tvm::Errors::ValidationError, 'Invalid username' if username.nil?
      raise Tvm::Errors::ValidationError, 'Invalid Password' if password.nil?  
      resp = post(sign_in_url, sign_in_params(username, password))

      if resp["result"].has_key?("error")
        raise Tvm::Errors::ServerError.new(resp["result"]["error"])
      else
        user = resp["result"]["user"]
        return {ks: resp["result"]["login_session"]["ks"], id: user["id"], email: user["email"], username: user["username"], first_name: user["first_name"], 
          last_name: user["last_name"], address: user["address"], phone: user["phone"], zip: user["zip"],
          city: user["city"], 
        }
      end
    end

    def initialize(arg = {}) #(email, first_name, last_name, address, city, zip, country, phone, username, password)
      @id = arg[:id]
      @username = arg[:username]
      # @password = arg[:password]
      @email = arg[:email]
      @first_name = arg[:first_name]
      @last_name = arg[:last_name]
      @address = arg[:address]
      @city = arg[:city]
      @zip = arg[:zip]
      @country = arg[:country]
      @phone = arg[:phone]
      @kaltura_session = arg[:ks]
    end
  end

end

# {
#   "executionTime": 3.421105,
#   "result": {
#     "user": {
#       "is_household_master": true,
#       "household_id": 282809,
#       "user_type": {
#         "objectType": "KalturaOTTUserType",
#         "relatedObjects": "",
#         "description": ""
#       },
#       "dynamic_data": {},
#       "suspention_state": "not_suspended",
#       "user_state": "ok",
#       "id": "614529",
#       "username": "vy",
#       "first_name": "v",
#       "last_name": "y",
#       "objectType": "KalturaOTTUser",
#       "relatedObjects": "",
#       "external_id": "",
#       "facebook_token": "",
#       "affiliate_code": "",
#       "facebook_image": "",
#       "facebook_id": "",
#       "phone": "1111111111",
#       "zip": "41230",
#       "city": "Pune",
#       "address": "New Address",
#       "email": "vikas@vertisinfotech.com"
#     },
#     "login_session": {
#       "objectType": "KalturaLoginSession",
#       "relatedObjects": "",
#       "refresh_token": "840434f2376a4ed2af08e4c802601c73",
#       "ks": "djJ8Mzk0fHc5PsTMFGcd89cgJavz9KIVzYHMuInZ6rrk9ZsmHeTLJVMSFo9UPTaGMBnZC5fP79SjOl3XwsTGdVS38vjF4Ini10F7aSspcgpeF3Stp6ji"
#     },
#     "objectType": "KalturaLoginResponse",
#     "relatedObjects": ""
#   }
# }