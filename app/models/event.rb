class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :lists, foreign_key: :attended_event_id
  has_many :attendants, through: :lists,  source: :attendee
end
