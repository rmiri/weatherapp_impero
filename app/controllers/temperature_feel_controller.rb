class TemperatureFeelController < ApplicationController

    def create
        TemperatureFeel.create(permited_params)
        redirect_to '/'
    end

    private

    def permited_params 
      params.require(:temperature_feel).permit(:cold,:warm,:hot)
    end
    
end