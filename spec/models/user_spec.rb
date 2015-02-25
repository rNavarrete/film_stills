require 'rails_helper'

RSpec.describe User, :type => :model do
  let(:user) do
    user = User.create(first_name: "Rolando", last_name: "Navarrete", email: "wu-tang-kid@gmail.com", password_digest: "ghostface")
  end

  it "is valid" do
    expect(user).to be_valid
  end
end
