require "rails_helper"

RSpec.feature "Movie Poster Managment", type: :feature do
  scenario "User creates a new movie poster" do
    visit "/movie_posters/new"
    file = File.open("#{Rails.root}/app/assets/images/wild_s.jpeg")
    fill_form(:movie_poster, { title: "Wild Strawberries", poster_image: file})
    click_on "Save Poster"
    expect(page).to have_text("Wild Strawberries")
  end
end
