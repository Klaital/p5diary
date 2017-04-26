class CalendarEvent < ApplicationRecord
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
