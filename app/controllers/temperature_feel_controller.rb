class TemperatureFeelController < ApplicationController
    def index
        @feel = TemperatureFeel.last
    end
    
    def create
        @temperature_feel = TemperatureFeel.new(params)
    end
    
end