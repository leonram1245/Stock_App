require 'rails_helper'

RSpec.describe 'Sign in process', type: :feature do
  let(:user) { create :user }

  it 'should log me in with valid user details & confirmed email' do
    visit new_user_session_path

    within '#new_user' do
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: 'password'

      click_button 'Log in'
    end

    expect(page.current_path).to eq root_path
  end

  it 'should not log me in when input is invalid user details' do
    visit new_user_session_path

    within '#new_user' do
      fill_in 'user_email', with: 'invalid@email.com'
      fill_in 'user_password', with: 'wrongpassword'

      click_button 'Log in'
    end

    expect(page.current_path).to eq new_user_session_path
  end
end