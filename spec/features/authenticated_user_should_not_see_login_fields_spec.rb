require "rails_helper"

feature "authenticated user" do
  scenario "should not see login fields" do
    user = FactoryGirl.create(:user)
    visit "/"
    page.fill_in('Email', with: user.email)
    page.fill_in('Password', with: user.password)
    page.click_button('Sign In')
    visit "/"
    expect(page).to_not have_content("Password")
  end
end
