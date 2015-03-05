require "rails_helper"

RSpec.describe API::V1::MoviesController, :type => :controller do
  it "responds with a 200 code when queried" do
    get :index, format: :json
    expect(response.status).to eql(200)
  end
end
