require 'rails_helper'

describe 'the signin process', type: :feature do
  before :each do
    User.create(email: 'user@example.com', password: '1234567', password_confirmation: '1234567')
  end

  it 'checks the user exists' do
    expect(User.last.email).to have_content 'user@example.com'
  end
  
  it 'signs me in' do
    visit '/users/sign_in'
    within('#new_user') do
      fill_in 'user_email', with: 'user@example.com'
      fill_in 'user_password', with: '1234567'
    end
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully.'
  end
end
