require 'pry'

class WeatherController < ApplicationController

  include WeatherHelper
  
def index

    if params[:query] && permited_params
      @temperature = temperature(permited_params[:postcode_query])['current']['temp_c']
      @postcode = permited_params[:postcode_query]
      @temperature_feel = Weather.temperature_feeling(temperature)
    else
      
      @temperature = temperature('London')['current']['temp_c']
      @postcode = "London"
      @temperature_feel = Weather.temperature_feeling(temperature)
    end
  end

  private

  def permited_params 
    params.require(:query).permit(:postcode_query)
  end

end
