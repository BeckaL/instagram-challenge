require_relative 'web_helpers'

describe 'log out and back in' do

  test_email = "test@test.com"

  before { sign_up }

  it 'logs out a user' do
    log_out
    expect(page).to have_content "Please sign in to upload pictures"
  end

  it 'logs in a user with correct credentials' do
    log_out
    log_in
    expect(page).to have_content "test@test.com"
  end

  it 'does not log in a user with incorrect credentials' do
    log_out
    log_in(correct_creds = false)
    expect(page).to have_content "Forgot your password?"
  end
end
