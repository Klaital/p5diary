class CreateConfidantAvailabilityEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :confidant_availability_events do |t|
      t.string :confidant
      t.string :location
      t.text :notes

      t.timestamps
    end
  end
end
