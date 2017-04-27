class AssignConfidantToAvailability < ActiveRecord::Migration[5.0]
  def change
    remove_column :confidant_availability_events, :confidant
    change_table :confidant_availability_events do |t|
      t.belongs_to :confidant, index: true
    end
  end
end
