class AssignAvailabilityToCalendar < ActiveRecord::Migration[5.0]
  def change
    change_table :confidant_availability_events do |t|
      t.belongs_to :calendar_event, index: true
    end
  end
end
