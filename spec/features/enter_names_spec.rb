feature "submitting names" do
  scenario 'can submit names and see them on screen' do
    sign_in_and_play
    expect(page).to have_content "Adam vs. Steve"
  end
end
