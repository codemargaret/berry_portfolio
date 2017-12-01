require 'rails_helper'

describe 'test for sign-in process' do
  it 'will let user sign in' do
    FactoryBot.create(:user)
    visit new_user_session_url
    fill_in 'Username', :with => 'user'
    fill_in 'Password', :with => 'password'
    click_button 'Log in'
    expect(page).to have_content "Signed in successfully."
  end
end

describe 'test for sign-out process' do
  it 'will let user sign out' do
    FactoryBot.create(:user)
    visit new_user_session_url
    fill_in 'Username', :with => 'user'
    fill_in 'Password', :with => 'password'
    click_button 'Log in'
    click_link 'Logout'
    expect(page).to have_content "Signed out successfully."
  end
end
