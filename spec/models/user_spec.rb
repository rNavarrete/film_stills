require "rails_helper"

RSpec.describe User, :type => :model do

  it "is valid with all necessary attributes" do
    user = FactoryGirl.create(:user)
    expect(user).to be_valid
  end

  it "isn't valid without a first name" do
    invalid_user = FactoryGirl.build(:user, first_name: nil)
    expect(invalid_user).to_not be_valid
  end

  it "can use bcrypt to authenticate a user password" do
    user = FactoryGirl.create(:user)
    params = {}
    params[:password] = "brando"
    authenticated_user = user.authenticate(params[:password])

    expect(authenticated_user).to be_valid
  end
end
