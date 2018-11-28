require_relative 'web_helpers'

describe 'Sign up' do

  it 'signs up a user' do
    sign_up

    expect(page).to have_content "Welcome to instagram, test@test.com"
  end
end
