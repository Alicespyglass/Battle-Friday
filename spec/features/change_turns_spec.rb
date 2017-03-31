

feature 'tracks turns - change_turns_spec' do
  scenario 'player 1 goes first' do
    sign_in_and_play
    expect(page).to have_content "Volkswagen's turn"
  end

  scenario 'player 2 goes second' do
    sign_in_and_play
    click_button "Cheat emissions test"
    click_button "OK"
    expect(page).not_to have_content "Volkswagen's turn"
    expect(page).to have_content "Polar Bear's turn"
  end

end
