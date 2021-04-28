require 'rails_helper'

RSpec.describe 'Sign up process', type: :feature do
  let!(:user) { create :user }
  let(:valid_attributes) { attributes_for :user }

  it 'should create new user' do
    visit new_user_registration_path

    within '#new_user' do
      fill_in 'user_email', with: valid_attributes[:email]
      fill_in 'user_password', with: valid_attributes[:password]
      fill_in 'user_password_confirmation', with: valid_attributes[:password_confirmation]
      # fill_in 'user_roles', with: valid_attributes[roles: []]

      click_button 'Sign up'
    end

    expect(page.current_path).to eq user_registration_path
  end
end