describe 'sign in' do
  it 'sees hello world' do
    visit '/'
    expect(page).to have_content "Welcome to instagram"
  end
end
