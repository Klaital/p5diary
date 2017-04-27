class CreateSocialStats < ActiveRecord::Migration[5.0]
  def change
    create_table :social_stats do |t|
      t.string :name
      t.integer :rank2
      t.integer :rank3
      t.integer :rank4
      t.integer :rank5
      t.text :notes

      t.timestamps
    end
  end
end
