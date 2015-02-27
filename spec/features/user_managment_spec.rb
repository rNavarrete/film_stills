require "rails_helper"

feature "User management" do
  scenario "User can create an account" do
    visit "/signup"
    fill_in "user_email", with: "rolando.e.navarrete@gmail.com"
    fill_in "user_username", with: "ghostface"
    fill_in "user_password", with: "godfather"
    fill_in "user_password_confirmation", with: "godfather"
    fill_in "user_first_name", with: "rolando"
    fill_in "user_last_name", with: "navarrete"
    click_on "Create User"
    expect(page).to have_content("rolando")
  end
end
