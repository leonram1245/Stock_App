require 'rails_helper'

RSpec.describe 'Sign Out process', type: :feature do
  let(:user) { create(:user) }

  before(:each) do
    sign_in(:user)
  end

  it "should redirect user to Login Page" do
    visit root_path

    within "#sign_out" do
      click_link "Sign Out"
    end
    
    expect(page.current_path).to new_user_session_path
  end
end