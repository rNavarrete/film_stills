require 'rails_helper'

RSpec.describe User, :type => :model do
  let(:user) do
    user = User.create(first_name: "Rolando", last_name: "Navarrete", email: "wu-tang-kid@gmail.com", password_digest: "ghostface")
  end
  
  let(:invalid_user) do
    invalid_user = User.create(first_name: nil, last_name: nil, email: nil, password_digest: nil)
  end

  it "is valid" do
    expect(user).to be_valid
  end

  it "isn't valid" do
    expect(invalid_user).to_not be_valid
  end
end
