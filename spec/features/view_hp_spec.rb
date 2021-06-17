feature "Viewing hit points" do
  scenario "can see player 2's hit points" do
    visit("/")
    fill_in("player1", with: "Anita")
    fill_in("player2", with: "Juel")
    click_button("submit")
    expect(page).to have_content "Juel = 60HP"
  end
end
