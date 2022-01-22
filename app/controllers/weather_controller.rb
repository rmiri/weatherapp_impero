class WeatherController < ApplicationController
include WeatherHelper
  def index
    @temperature = temperature('e3')
  end

end
