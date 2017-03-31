def sign_in_and_play
  visit '/'
  fill_in 'Player 1', :with => "Volkswagen"
  fill_in 'Player 2', :with => "Polar Bear"
  click_button("Submit")
end


def kill_player
  click_button "Cheat emissions test"
  click_button("OK")
end
