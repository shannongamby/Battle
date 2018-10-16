feature "submitting names" do
  scenario 'can submit names and see them on screen' do
    visit('/')
    fill_in :player_1_name, with: "Adam"
    fill_in :player_2_name, with: "Steve"
    click_button "Submit"
    expect(page).to have_content "Adam vs. Steve"
  end
end
