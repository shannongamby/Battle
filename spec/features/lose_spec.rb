feature "losing the game" do
  scenario 'game ends when player is at 0HP' do
    allow(Kernel).to receive(:rand).and_return(10)
    sign_in_and_play
    9.times do
      click_button "ATTACK"
      click_button "OK"
    end
    expect(page).to have_content "Steve: You Lose"
  end
end
