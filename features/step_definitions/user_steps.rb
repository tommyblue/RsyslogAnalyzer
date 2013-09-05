Given /I am a valid user/ do
  create_user
end

Given /I am not signed in/ do
  visit '/users/sign_out'
end

When /I sign in with my credentials/ do
  sign_in
end

Then /I am signed in/ do
  page.should_not have_content "Login"
end

When /I visit the home page/ do
  pending
end

Then /I see a welcome message/ do
  page.should have_content "Signed in successfully."
end

def create_user
  @user ||= FactoryGirl.create(:user)
end

def sign_in
  visit '/users/sign_in'
  fill_in "user_email", with: @user[:email]
  fill_in "user_password", with: @user[:password]
  click_button "Sign in"
end
