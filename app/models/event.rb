class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :attended_event, foreign_key: :attended_events_id
  has_many :attendee, through: :attended_event, source: :attendee_id
end
