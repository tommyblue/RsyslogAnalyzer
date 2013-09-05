require 'spec_helper'

describe DashboardController do
  before(:each) do
    @request.env["devise.mapping"] = Devise.mappings[:user]
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  it "Should be redirected to sign in form if not authenticated" do
    sign_out @user if @user
    get :index
    expect(response).to redirect_to('/users/sign_in')
  end

  it "should have a current_user" do
    subject.current_user.should_not be_nil
  end

  it "should get index" do
    get 'index'
    response.should be_success
  end
end
