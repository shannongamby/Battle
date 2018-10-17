feature "viewing HP" do
  scenario 'can see HP of player 2' do
    sign_in_and_play
    expect(page).to have_content "Steve: 50 HP"
  end
end
