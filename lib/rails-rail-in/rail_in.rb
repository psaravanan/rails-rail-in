#module Rails
  class RailIn
    attr_accessor :erail_key

    def initialize(erail_key, options = {})
      puts "options: #{options}"
      puts "erail_key: #{erail_key}"
      @erail_key = erail_key
    end

    def stations
      url = "#{base_url}/stations/?key=#{erail_key}"
      Request.query url
    end

    def trains(from, to, options = {})
      puts "erail_key: #{erail_key}"
      date = options[:date]
      class_code = options[:class_code]
      url = "#{base_url}/trains/?key=#{erail_key}&stnfrom=#{from}&stnto=#{to}&date=#{date}&class=#{class_code}"
      Request.query url
    end

    def route(train_no)
      url = "#{base_url}/route/?key=#{erail_key}&trainno=#{train_no}"
      Request.query url
    end

    def full_route(train_no)
      url = "#{base_url}/fullroute/?key=#{erail_key}&trainno=#{train_no}"
      Request.query url
    end

    def fare(train_no, from, to, age, quota, run_date, options = {})
      class_code = options[:class_code]
      url = "#{base_url}/fare/?key=#{erail_key}&trainno=#{train_no}&stnfrom=#{from}&stnto=#{to}&age=#{age}&quota=#{quota}&class=#{class_code}&date=#{run_date}"
      Request.query url
    end

    def pnr_status(pnr_no)
      url = "#{base_url}/pnr?key=#{erail_key}&pnr=#{pnr_no}"
      Request.query url
    end

    def live_status(train_no, from, run_date)
      url = "#{base_url}/live/?key=#{erail_key}&trainno=#{train_no}&stnfrom=#{from}&date=#{run_date}"
      Request.query url
    end

    def seat_availability(train_no, from, to, quota, class_code, run_date)
      url = "#{base_url}/seats/?key=#{erail_key}&trainno=#{train_no}&stnfrom=#{from}&stnto=#{to}&quota=#{quota}&class=#{class_code}&date=#{run_date}"
      Request.query url
    end

    def train_at_station(from, to, hour)
      url = "#{base_url}/trainsatstation/?key=#{erail_key}&stnfrom=#{from}&stnto=#{to}&hr=#{hour}"
      Request.query url
    end

    def base_url
      "http://api.erail.in"
    end
    # "fd3ebf59-3ed8-424f-a99d-5cfad4337d94"

  end
#end

