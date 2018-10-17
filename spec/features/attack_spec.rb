feature "attacking player 2" do
  scenario "attack player 2 and see confirmation" do
    sign_in_and_play
    click_button "ATTACK"
    expect(page).to have_content "You attacked Steve!"
  end
end
