# Rails::Rail::In

rails-rail-in is to find an Indian Railways Info like Train Lists, Station Lists, Routes, Fare, PNR Status, Seat Availabilities and more.

## Installation

To install using Bundler grab the latest stable version:

```ruby
gem 'rails-rail-in', '~> 1.0.0'
```

To manually install rails-rail-in via Rubygems simply gem install:

    $ gem install rails-rail-in

## API Key

To get an API key go to: http://api.erail.in/#api_key and send a email request to eRail Team.

## Usage

```ruby
rail_in =	RailIn.new(eRailKey)
```
### Stations List

Get the result of all the stations with their station code, name, latitude and longitude.

```json

rail_in.stations

output:
-------
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

```json

rail_in.pnr_status(pnr_number)

output:
-------
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
```

### Wiki

To know all available methods check on <a href="https://github.com/psaravanan/rails-rail-in/wiki">Wiki </a>

## Contributing

1. Fork it ( https://github.com/[my-github-username]/rails-rail-in/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Copyright

Copyright © 2014 by Saravanan P

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
