require 'rest_client'
require 'json'
class Request

	def self.query(url)
		JSON.parse RestClient.get url
	end

end
