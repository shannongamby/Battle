feature "attacking player 2" do
  scenario "attack player 2 and see confirmation" do
    sign_in_and_play
    click_button "ATTACK"
    expect(page).to have_content "Adam attacked Steve!"
  end

  scenario 'after attack HP reduced by 10' do
    allow(Kernel).to receive(:rand).and_return(10)
    sign_in_and_play
    click_button "ATTACK"
    click_button "OK"
    expect(page).to have_content "Steve: 40 HP"
  end
end
