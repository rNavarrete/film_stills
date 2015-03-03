require 'rails_helper'

RSpec.describe SessionsController, :type => :controller do
  scenario "user can log in and create a session" do
    user = User.new(first_name: "Rolando", last_name:  "Navarrete", email: "rolando.e.navarrete@gmail.com", username: "archshot", password: "godfather")
  end
end
