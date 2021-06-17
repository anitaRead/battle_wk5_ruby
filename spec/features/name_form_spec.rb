feature "Testing name form" do
  scenario "can fill in form and submit names" do
    visit("/")
    fill_in("player1", with: "Anita")
    fill_in("player2", with: "Juel")
    click_button("submit")
    expect(page).to have_content "Anita vs Juel"
  end
end
