require 'httparty'

module WeatherHelper
    
    def temperature(postcode)
        HTTParty.get(weather_api + postcode)
    end

    private
    
    def weather_api
        "https://api.weatherapi.com/v1/forecast.json?key=#{ENV['WEATHER_API_KEY']}&q="
    end

end
