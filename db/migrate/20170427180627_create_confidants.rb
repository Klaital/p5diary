class CreateConfidants < ActiveRecord::Migration[5.0]
  def change
    create_table :confidants do |t|
      t.string :arcana
      t.string :name
      t.datetime :start_date
      t.text :notes

      t.timestamps
    end
  end
end
