require 'rails_helper'

RSpec.describe User, :type => :model do
  let(:user) do
    User.create(first_name: "Rolando", last_name: "Navarrete", email: "wu-tang-kid@gmail.com", password: "godfather")
  end

  let(:invalid_user) do
    User.create(first_name: nil, last_name: nil, email: nil, password_digest: nil)
  end

  it "is valid" do
    expect(user).to be_valid
  end

  it "isn't valid" do
    expect(invalid_user).to_not be_valid
  end

  it "can use bcrypt to authenticate a user password" do
    params = {}
    params[:password] = "godfather"
    authenticated_user = user.authenticate(params[:password])

    expect(authenticated_user).to be_valid
  end
end
