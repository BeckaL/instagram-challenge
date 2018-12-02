require_relative 'web_helpers'

describe 'upload picture' do

  it 'uploads a picture' do
    sign_up
    click_link 'Post new picture'
    fill_in :Title, with: 'test title'
    fill_in :Caption, with: 'test caption'
    attach_file(:Image, '/Users/rebeccalelew/Projects/instagram-challenge/spec/features/test_image.jpg')
    click_button("Create Picture")
    expect(page).to have_content "test title"
    expect(page).to have_content "test caption"
  end
end
