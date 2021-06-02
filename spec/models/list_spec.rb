require 'rails_helper'

RSpec.describe List, type: :model do
  before :each do
    User.create!(email: 'user@example.com', password: '1234567', password_confirmation: '1234567')
    Event.create(title: 'Eventtitle', body: 'Info of event', date: Date.today, location: 'here', creator_id: 1)
  end

  it 'add me as attendant' do
    user2 = User.create!(email: 'user2@example.com', password: '1234567', password_confirmation: '1234567')
    login_as(user2, scope: :user)
    visit '/events/1'
    click_link 'Attend'
    expect(page).to have_content 'user2@example.com'
  end
end
