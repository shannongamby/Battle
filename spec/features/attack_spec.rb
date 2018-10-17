feature "attacking player 2" do
  scenario "attack player 2 and see confirmation" do
    sign_in_and_play
    click_button "ATTACK"
    expect(page).to have_content "You attacked Steve!"
  end

  scenario 'after attack HP reduced by 10' do
    sign_in_and_play
    click_button "ATTACK"
    click_button "Attack again"
    expect(page).to have_content "Steve: 40 HP"
  end
end
