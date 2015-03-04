require "rails_helper"

feature "authenticated user" do
  scenario "should not see login fields" do
    user = create(:user)
    login_as(user)
    visit "/"
    expect(page).to_not have_content("Password")
  end
end
