require "rails_helper"

RSpec.describe "authenticated user can add film stills", :type => :feature do
  it "a user can add film stills to a movies he has added" do
    user_login
    user = User.first
    user_creates_film(user)
    click_link("Add a Still")
    select('Back to the Future', :from => 'Films')
    attach_file('Image',"/#{Rails.root}/app/assets/images/pulp.jpg")
    click_button("Upload Still")
  end
end
