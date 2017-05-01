class CreateCalendarDays < ActiveRecord::Migration[5.0]
  def change
    create_table :calendar_days do |t|
      t.datetime :date
      t.text :notes

      t.timestamps
    end

    change_table :calendar_events do |t|
      t.belongs_to :calendar_day, index: true
    end
  end
end
