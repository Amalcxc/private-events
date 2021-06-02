class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :lists, foreign_key: :attended_event_id
  has_many :attendants, through: :lists, source: :attendee

  scope :upcoming, -> { where('date >= ?', Time.zone.now) }
  scope :previous, -> { where('date < ?', Time.zone.now) }
end
