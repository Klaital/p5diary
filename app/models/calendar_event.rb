class CalendarEvent < ApplicationRecord
    has_many :confidant_availability_events
    belongs_to :calendary_day
    
    def weather_to_s
        if self.weather.nil?
            return "??"
        end

        s = self.weather.to_s
        unless self.weather_modifier.nil?
            s += " / #{self.weather_modifier}"
        end
        return s
    end
end
