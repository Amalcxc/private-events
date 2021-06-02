class AddUniquenessToListsTable < ActiveRecord::Migration[6.1]
  def change
    add_index :lists, [:attendee_id, :attended_event_id], unique: true
  end
end
