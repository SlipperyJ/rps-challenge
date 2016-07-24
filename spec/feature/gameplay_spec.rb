require 'spec_helper'

feature "Gameplay" do
  scenario "when a player plays a game" do
    allow_any_instance_of(Game).to receive(:results).and_return("Win")
    visit "/"
    fill_in :player, with: "M0UNT41NDEW420"
    click_button "Submit"
    click_button('Rock')
    expect(page).to have_content("You chose Rock")
    expect(page).to have_content("The computer chose")
    #expect(page).to have_content("Win")
  end
end
