require 'base64'
require 'openssl'
require 'awesome_print'

module Tvm
  autoload :Connection, 'tvm/connection'
  autoload :User, "tvm/user"
  autoload :Category, 'tvm/category'
  autoload :Menu, 'tvm/menu'
  # autoload :Enum, 'mws/enum'
  # autoload :EnumEntry, 'mws/enum'
  autoload :Errors, 'tvm/errors'
  autoload :Query, 'tvm/query'
  # autoload :Serializer, 'mws/serializer'
  # autoload :Signer, 'mws/signer'
  # autoload :Utils, 'mws/utils'

  # The current version of this ruby gem
  VERSION = '0.0.3'
  BASE_URL = "http://tvpapi-stg.as.tvinci.com/restful_V3_8/"
  PARTNER_Id = 394

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
    Connection.new(username, password)
  end

end


# connection = Tvm.connect()


# category = Tvm::Category.get(connection, params)
# menus  = Tvm::Menu.get(connection, id)
# user = Tv::User.login(params)
# new_user = Tvm::User.new()

