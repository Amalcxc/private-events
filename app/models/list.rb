class List < ApplicationRecord
  belongs_to :attendee, class_name: 'User'
  belongs_to :attended_event, class_name: 'Event'
  validates :attendee, uniqueness: { scope: :attended_event }
end
