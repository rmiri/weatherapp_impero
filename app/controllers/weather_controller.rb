require 'pry'

class WeatherController < ApplicationController

  include WeatherHelper
  
def index
  @temperature_feel = TemperatureFeel.new

  if params[:query] && permited_params
    response = api_request(permited_params[:postcode_query])
    @temperature = response['current']['temp_c']
    @postcode = permited_params[:postcode_query]
    @temperature_feeling = Weather.temperature_feeling(@temperature)
  else
    response = api_request('London')
    @temperature = response['current']['temp_c']
    @postcode = "London"
    @temperature_feeling = Weather.temperature_feeling(@temperature)
  end
end

  private

  def permited_params 
    params.require(:query).permit(:postcode_query)
  end

end
