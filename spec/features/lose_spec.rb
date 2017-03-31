feature 'losing' do
  scenario 'when hp reaches 0 a player loses' do
    sign_in_and_play
    19.times { kill_player }
    expect(page).to have_content "Sorry Polar Bear, you're extinct"
  end
end
