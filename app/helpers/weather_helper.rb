require 'httparty'

module WeatherHelper
    
    def api_request(location)
        HTTParty.get(weather_api + location)
    end

    private

    def weather_api
        "https://api.weatherapi.com/v1/forecast.json?key=#{ENV['WEATHER_API_KEY']}&q="
    end
end
