class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.integer :attendee_id
      t.string :attended_event_id

      t.timestamps
    end
  end
end
