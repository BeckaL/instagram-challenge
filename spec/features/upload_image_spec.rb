require_relative 'web_helpers'

describe 'upload picture' do

  it 'uploads a picture' do
    sign_up
    picture_upload
    expect(page).to have_content "test title"
    expect(page).to have_content "test caption"
  end
end
