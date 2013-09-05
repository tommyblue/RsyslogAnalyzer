require 'spec_helper'

describe User do
  it "must have an email" do
    expect(FactoryGirl.build(:user, email: nil)).to have(1).errors_on(:email)
  end

  it "must have an unique email" do
    email = "duplicate@example.com"
    FactoryGirl.create(:user, email: email)

    expect(FactoryGirl.build(:user, email: email)).to have(1).errors_on(:email)
  end
end
