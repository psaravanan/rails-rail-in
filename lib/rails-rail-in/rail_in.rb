require 'rest_client'

module Rails
	class RailIn

	  def get_train
		p "testsewwww"
	    "16105"
	  end

	  def pnr_status(pnr_no)
	  	RestClient.get "http://api.erail.in/pnr?key=fd3ebf59-3ed8-424f-a99d-5cfad4337d94&pnr=#{pnr_no}"
	  end

	  def base_url
	  	"http://api.erail.in/"
	  end

	end
end

