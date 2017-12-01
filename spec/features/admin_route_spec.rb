require 'rails_helper'

describe 'test for admin route protection' do
  it 'will allow admin to see admin page' do
    FactoryBot.create(:admin)
    visit new_user_session_url
    fill_in 'Username', :with => 'admin'
    fill_in 'Password', :with => 'password1'
    click_button 'Log in'
    visit rails_admin_url
    expect(page).not_to have_content "About Margaret"
  end

  it 'will block admin page for non-admins' do
    FactoryBot.create(:user)
    visit new_user_session_url
    fill_in 'Username', :with => 'user'
    fill_in 'Password', :with => 'password'
    click_button 'Log in'
    visit rails_admin_url
    expect(page).to have_content "About Margaret"
  end
end
