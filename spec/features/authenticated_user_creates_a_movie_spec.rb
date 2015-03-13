require "rails_helper"

feature "Authenticated user creates a new movie" do
  scenario "user logs in and sees the movie title on the page" do
    user = User.create(first_name: "Rolando",last_name: "Navarrete", email: "rolando.e.navarrete@gmail.com", password: "godfather", username: "archshot")
    visit "/"
    page.fill_in('Email', with: user.email)
    page.fill_in('Password', with: user.password)
    page.click_button('Sign In')
    click_on "Add a Movie"
    file = File.open("#{Rails.root}/app/assets/images/wild_s.jpeg")

    fill_form(:movie, { title: "Wild Strawberries", poster_image: file, director: "Ingmar Bergman", release_date: "June 22, 1959", cast: "Victor Sjöström, Bibi Andersson, Ingrid Thulin, Max von Sydow", imdb_url: "http://www.imdb.com/title/tt0050986/?ref_=nv_sr_1"})
    click_on "Save Movie"
    expect(page).to have_content("Wild Strawberries")
  end
end
