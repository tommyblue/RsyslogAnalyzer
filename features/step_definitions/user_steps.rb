Given /I am a valid user/ do
  create_user
end

Given /I am not signed in/ do
  pending
end

When /I sign in with my credentials/ do
  pending
end

Then /I am signed in/ do
  pending
end

Then /I am redirected to the dashboard/ do
  pending
end

Then /I see a welcome message/ do
  pending
end

def create_user
  @user ||= FactoryGirl.create(:user)
end
