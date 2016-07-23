require 'spec_helper'

feature "Name registration" do
  scenario "when a marketeer registers their name" do
    visit "/"
    fill_in :player, with: "M0UNT41NDEW420"
    click_button "Submit"
    expect(page).to have_content("M0UNT41NDEW420")
  end
end
