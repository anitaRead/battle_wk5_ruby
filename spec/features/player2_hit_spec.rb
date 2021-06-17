feature "Hit Player 2" do
  scenario "can hit player 2 and get confirmation" do
    sign_in_and_play
    click_link("Attack")
    expect(page).to have_content "Success!"
  end
end
