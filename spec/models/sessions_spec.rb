require "rails_helper"

RSpec.describe "sessions", type: :model do
  context "when a user has an accout he can successfully sign in" do
    user = create(:user)
    login_as(user)

    expect(page).to have_content("You have successfully signed in")
  end
end
