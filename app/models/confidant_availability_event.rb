class ConfidantAvailabilityEvent < ApplicationRecord
    belongs_to :calendar_event
    belongs_to :confidant
end
