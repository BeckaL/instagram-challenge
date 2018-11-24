describe 'sign up' do

  test_email = "test@test.com"
  test_password = "123456"

  it 'signs up a user' do
    visit '/users/sign_up'
    fill_in 'user[email]', with: test_email
    fill_in 'user[password]', with: test_password
    fill_in 'user[password_confirmation]', with: test_password
    click_button 'Sign up'
    expect(page).to have_content "Welcome to instagram, #{test_email}"
  end
end
