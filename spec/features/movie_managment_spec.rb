require "rails_helper"

feature "Movie Managment" do
  scenario "User creates a new movie" do
    visit "/movies/new"

    file = File.open("#{Rails.root}/app/assets/images/wild_s.jpeg")
    fill_form(:movie, { title: "Wild Strawberries", poster_image: file})
    click_on "Save Poster"
    expect(page).to have_text("Wild Strawberries")
  end

  scenario "User can delete a movie poster" do
    user = User.create(first_name: "Rolando",last_name: "Navarrete", email: "rolando.e.navarrete@gmail.com", password_digest: "godfather")

    login_as(user)
    visit "/my_films"
    within("#films_1") do
      click_link "edit"
    end

    click_link "delete film"
    expect(page).to have_text("Film has been successsfully deleted")
  end
end
