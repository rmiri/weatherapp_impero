class TemperatureFeel < ApplicationRecord

    # validates :cold, comparison: { less_than: :hot, :warm }

    def self.retrieve_last_entry
        TemperatureFeel.last
    end

    def self.temperature_feeling(temperature)
        
        binding.pry
        
        if retrieve_last_entry.cold.to_f > temperature
            'cold'   
        elsif retrieve_last_entry.warm.to_f > temperature
            'warm'
        else
            'hot'
        end
    end

end
