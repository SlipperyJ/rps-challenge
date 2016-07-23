require 'spec_helper'

feature "Gameplay" do
  scenario "when a player plays a game" do
    visit "/"
    fill_in :player, with: "M0UNT41NDEW420"
    click_button "Submit"
    click_button('Rock')
  end
end
