require "rails_helper"

RSpec.describe "user can log in successfully", :type => :feature do
  it "when he logs in with valid attributes" do
    user = FactoryGirl.create(:user)
    visit "/"
    page.fill_in('Email', with: user.email)
    page.fill_in('Password', with: user.password)
    page.click_button('Sign In')
    expect(page).to have_content("Welcome to your dashboard Navarrete")
  end
end
