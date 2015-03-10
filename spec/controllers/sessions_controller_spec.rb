require 'rails_helper'

RSpec.describe SessionsController, :type => :controller do
  scenario "user can log in and create a session" do
    user = FactoryGirl.create(:user)
    post :create , :email => "rolando.e.navarrete@gmail.com", :password => "brando"
    expect(session[:user_id]).to_not be_nil
  end
end
