# Rails::Rail::In

rails-rail-in is used to find the Indian Railways Info like Trains List, Stations List, Routes, Fare, PNR Status, Seat Availability.

## Installation

To install using Bundler grab the latest stable version:

```ruby
gem 'rails-rail-in', '-> 1.0.0'
```

To manually install rails-rail-in via Rubygems simply gem install:

    $ gem install rails-rail-in

## API Key

Follow the below instruction to get an API key

Go to: http://api.erail.in/#api_key
To create your key send a email request to eRail Team.

## Usage

	rail_in =	RailIn.new(eRailKey)

### Stations List

Get the result of all the stations with their station code, name, latitude and longitude.

	```ruby
	rail_in.stations
	```

	output:
	-------
	```json
		{
			"status" : "OK",
			"result" : [
				{ 
					"code" : "NDLS",
					"name" : "New Delhi"
				},
				{ 
					"code" : "BCT",
					"name" : "Mumbai Central"
				},
				....
			]
		}
	```

### PNR Status

Get details of given PNR number.

	```ruby
	rail_in =	RailIn.new(eRailKey)
	rail_in.pnr_status(pnr_number)
	```
	output:
	-------
	```json
		{
			"status" : "OK",
			"result" :  { 
				"pnr" : "6533543051",
				"eticket" : true,
				"journey" : "09-Sep-2014",
				"trainno" : "12898",
				"name" : "BBS PDY EXPRESS",
				"from" : "VZM",
				"to" : "MS",
				"brdg" : "VZM",
				"passengers" : 
					[
						{
						"bookingstatus" : "RAC 14GNWL",
						"currentstatus" : "B3 14",
						"coach" : ""
						},
						....
					],
				"chart" : "CHART PREPARED",
				"error" : ""
			}
		}


## Contributing

1. Fork it ( https://github.com/[my-github-username]/rails-rail-in/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
