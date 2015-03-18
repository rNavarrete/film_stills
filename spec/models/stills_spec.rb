require "rails_helper"

RSpec.describe "Stills" do
  it "should be valid when there is a valid file path" do
    movie_with_still = FactoryGirl.create(:movie_with_still) 
    expect(movie_with_still).to be_valid
  end
end
