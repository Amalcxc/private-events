require 'rails_helper'

RSpec.describe Event, type: :model do
  it 'fails when creating an event without an user' do
    expect(Event.create(title: 'Event01', date: Date.today).errors.full_messages).to eq(['Creator must exist'])
  end

  it 'succeeds when creating an event with an user' do
    user = User.create(email: 'email@email.com', password: '1234567')
    event = Event.create(title: 'Meeting', date: '01/01/2001', body: 'this is an event for you', location: 'turkey', creator_id: user.id )
    expect(event).to eq(Event.first)
  end  
end
