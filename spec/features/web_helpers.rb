def sign_up
  creds = credentials

  visit '/users/sign_up'
  fill_in 'user[email]', with: creds[:email]
  fill_in 'user[password]', with: creds[:password]
  fill_in 'user[password_confirmation]', with: creds[:password]
  click_button 'Sign up'
end

def log_in(correct_creds = true)
  creds = credentials(correct_creds)

  click_link 'Login'
  fill_in 'user[email]', with: creds[:email]
  fill_in 'user[password]', with: creds[:password]
  click_button 'Log in'
end

def log_out
  visit '/'
  click_link 'Logout'
end


def credentials(correct = true)
  correct_creds = {email: "test@test.com", password: "123456"}
  incorrect_creds = {email: "wrong@email.com", password: "wrongPassword"}

  return correct_creds if correct
  return incorrect_creds
end
