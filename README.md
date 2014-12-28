# Rails::Rail::In

Indian Railways Trains, PNR Status, Features to come IRCTC Availability, Running Status, Map, Arrival Departure, Route, Fare Check...

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails-rail-in'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails-rail-in

## Get an API Key

The eRail.in Indian Railways API uses an API key to identify your application. API keys are managed through the eRail.in APIs console. To create your key:

Please send a request to Register
Upon approval you will be provided with the API key
Once the service has been activated, you can make HTTP request to the API.

## Usage

train =	RailIn.new
train.pnr_status(your_pnr_number)
# You will get JSON response

## Contributing

1. Fork it ( https://github.com/[my-github-username]/rails-rail-in/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
