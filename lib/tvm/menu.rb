module Tvm

  class Menu < Query
    attr_reader :id, :menu
  	
  	def initialize(id)
      @id = id
      raise Tvm::Errors::ValidationError, 'Please provide a valid id' if @id.nil?
      menu = post(url, params(id))

      if menu.empty?
        raise Tvm::Errors::ServerError.new({"objectType": "", "message": "Menu not found"})
      else
        @menu = menu
      end

  	end

    def url
      "http://tvpapi-stg.as.tvinci.com/v3_8/gateways/jsonpostgw.aspx?m=GetMenu"
    end

    def params(id)
      {"initObj": 
        {"Locale": 
          {
            "LocaleLanguage": "",
            "LocaleCountry": "",
            "LocaleDevice": "",
            "LocaleUserState": "Unknown"
          },
          "Platform": "Web",
          "SiteGuid": "",
          "DomainID": "282713",
          "UDID": "",
          "ApiUser": "tvpapi_394",
          "ApiPass": "11111",
          "Token": ""
        },
        "ID": "#{id}"}          
    end

  end

end