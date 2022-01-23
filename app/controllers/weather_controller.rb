require 'pry'

class WeatherController < ApplicationController
include WeatherHelper
  def index
    if permited_params[:postcode_query]
      @temperature = temperature(permited_params[:postcode_query])
      @postcode = permited_params[:postcode_query]
    else
      @temperature = temperature('London')
      @postcode = "London"
    end
  end

  private

  def permited_params 
    params.require(:query).permit(:postcode_query)
  end

end
