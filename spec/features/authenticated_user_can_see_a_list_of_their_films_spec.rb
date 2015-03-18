require "rails_helper"

RSpec.describe "Authenticated user" do
  it "can see a drop down of their films" do
    user_login
    create_four_films
    click_link "Add a Still"
    expect(page).to have_content("Back to the future", "Jurassic Park")
  end
end
