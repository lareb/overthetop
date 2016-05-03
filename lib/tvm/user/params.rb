module Params
    def sign_in_params(username, password)
      { "partnerId": Tvm::PARTNER_Id, "username": username, "password": password, "extra_params": {}, "udid": ""}      
    end

    def sign_up_params(email, first_name, last_name, address, city, zip, country, phone, username, password)
		{ 
			"partnerId": Tvm::PARTNER_Id,
			"password": password,
			"user": {
			          "household_id": 282809, #
			          "email": email,
			          "address": address,
			          "city": city,
			          "country": {
							"id": 0,
							"name": 0,
							"code": 0,
							"objectType": "KalturaCountry",
							"relatedObjects": ""
						},
						"zip": zip,
						"phone": phone,
						"facebook_id": "",
						"facebook_image": "",
						"affiliate_code": "",
						"facebook_token": "",
						"external_id": "",
						"user_type": {
							"id": 0,
							"description": "",
							"objectType": "KalturaOTTUserType",
							"relatedObjects": ""
						},
						"dynamic_data": {},
						"is_household_master": true,
						"suspention_state": "not_suspended",
						"user_state": "ok",
						"id": "",
						"username": username,
						"first_name": first_name,
						"last_name": last_name,
						"objectType": "KalturaOTTUser",
						"relatedObjects": ""
					}
		}
end


end