require "rails_helper"

RSpec.describe "user can view all films on index page" do
  scenario "unauthenticated user views all images on the home page" do
    create_four_films
    visit "/"
    expect(page).to have_content("Full Metal Jacket")
    expect(page).to have_content("Barry Lyndon")
    expect(page).to have_content("The Shining")
    expect(page).to have_content("A Clockwork Orange")
  end
end
