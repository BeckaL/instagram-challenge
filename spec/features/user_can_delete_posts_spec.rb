require_relative 'web_helpers'

describe 'deleting posts' do

  before do
    sign_up
    picture_upload
    @second_user_email = "secondemail@test.com"
  end

  it 'deletes a picture' do
    expect(page).to have_content "test title"
    expect(page).to have_content "test caption"
    click_link "Delete picture"
    expect(page.current_path).to eq '/pictures'
    expect(page).not_to have_content "test title"
    expect(page).not_to have_content "test caption"
  end

  it "cannot delete a picture if not the current user's" do
    log_out
    sign_up_individual_user(@second_user_email)
    visit '/pictures'
    expect(page).not_to have_link "test title"

  end


end
