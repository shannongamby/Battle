feature "switching turns" do
  scenario "player 2's turn after player 1" do
    sign_in_and_play
    click_button "ATTACK"
    click_button "OK"
    click_button "ATTACK"
    expect(page).to have_content "Steve attacked Adam!"
  end
end
