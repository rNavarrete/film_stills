require "rails_helper"

feature "Movie Managment" do
  scenario "User creates a new movie" do
    user = User.create(first_name: "Rolando",last_name: "Navarrete", email: "rolando.e.navarrete@gmail.com", password_digest: "godfather", username: "archshot")
    login_as(user)
    visit "/movies/new"
    file = File.open("#{Rails.root}/app/assets/images/wild_s.jpeg")
    fill_form(:movie, { title: "Wild Strawberries", poster_image: file})
    click_on "Save Movie"
    expect(page).to have_content("Wild Strawberries")
  end
end
