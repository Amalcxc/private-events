class CreateAttendedEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :attended_events do |t|
      t.integer :attendee_id
      t.integer :attended_event_id

      t.timestamps
    end
  end
end
