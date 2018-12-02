require_relative 'web_helpers'

describe 'deleting posts' do

  before do
    sign_up
    picture_upload
  end

  it 'uploads a picture' do
    expect(page).to have_content "test title"
    expect(page).to have_content "test caption"
    click_link "Delete picture"
    expect(page.current_path).to eq '/pictures'
    expect(page).not_to have_content "test title"
    expect(page).not_to have_content "test caption"
  end
end
