require 'spec_helper'

describe User do
  it { should validate_presence_of :user_name }
  it { should validate_presence_of :email }

  it "authenticates with matching username and password" do
    user = create(:user, user_name: "batman",
      password: "secret")
    User.authenticate("batman", "secret").should eq(user)
  end

  it "does not authenticate with incorrect password" do
    user = create(:user, user_name: "batman",
      password: "secret")
    User.authenticate("batman", "incorrect").should be_nil
  end
end
