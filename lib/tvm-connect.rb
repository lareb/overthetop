require 'base64'
require 'openssl'
require 'awesome_print'

module Tvm
  #constant declaration
  #can be move into another ruby file (module)
  #these parameters can be moved to application configuration level
  VERSION = '0.0.3'
  BASE_URL = "http://tvpapi-stg.as.tvinci.com/restful_V3_8/"
  VALID_EMAIL_REGEX = /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  PARTNER_Id = 394
  #########

  autoload :User, "tvm/user/user"
  autoload :Menu, 'tvm/menu/menu'
  autoload :Connection, 'tvm/connection'
  
  autoload :Category, 'tvm/category'
  

  autoload :Errors, 'tvm/errors'
  autoload :Query, 'tvm/query'
  autoload :Utils, 'tvm/utils'

  # The current version of this ruby gem


  # Utils.alias self, Apis::Feeds, 
  #   :Distance,
  #   :Feed,
  #   :ImageListing,
  #   :Inventory,
  #   :Money,
  #   :PriceListing,
  #   :Product,
  #   :Shipping,
  #   :Weight

  def self.connect(username, password)
    User.new(username, password)
  end

end

# connection = Tvm.connect()
# category = Tvm::Category.get(connection, params)
# menus  = Tvm::Menu.get(connection, id)
# user = Tv::User.login(params)
# new_user = Tvm::User.new()

