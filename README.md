#TODOs

#User Sign Up
require "tvm-connect"

 t = Tvm::User.sign_up("lareb.xyz@gmail", "lareb", nil, nil, nil, nil, nil, nil , "lareb_xx4", "lareb@xx")
 #t= Tvm::User.sign_up(email, first_name, last_name, address, city, zip, country, phone, username, password)

Response 
#<Tvm::User:0x0000000148df90 @id="614557", @username="lareb_xx5", @email="lareb.xyz@gmail.com", @first_name="lareb", @last_name="", @address="", @city="", @zip="", @country=nil, @phone="", @kaltura_session=nil>


#User Sign In
require "tvm-connect"

 t = Tvm::User.sign_in("vy", "vikas@123")
 #t = Tvm::User.sign_in(username, password)

 Response
 #<Tvm::User:0x000000014658b0 @id="614529", @username="vy", @email="vikas@vertisinfotech.com", @first_name="v", @last_name="y", @address="New Address", @city="Pune", @zip="41230", @country=nil, @phone="1111111111", @kaltura_session="djJ8Mzk0fKRI5LY59XYqYCmRRaVrnneqYI51tZocisxFaWyMSnUAdRRj52m-Rdg-rvvbsSTh63UqQtJIs6zGlpscTrNcmXoW7yQwuV6FeS5HzhE7D-fr">