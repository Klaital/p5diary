class CreateCalendarEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :calendar_events do |t|
      t.datetime :date
      t.string :time_slot
      t.string :weather
      t.string :weather_modifier
      t.text :events
      t.string :event_requirements
      t.text :notes

      t.timestamps
    end
  end
end
