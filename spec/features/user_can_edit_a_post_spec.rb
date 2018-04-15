require 'rails_helper'

RSpec.feature "Adding photo", type: :feature do
  scenario "Can add a photo with a description" do
    sign_up
    add_post
    click_link "Edit"
    fill_in "post[desc]", with: "Changed description"
    click_button "Update Post"
    expect(page).to have_content("Changed description")
    expect(page).to have_current_path("/posts")
  end
end
