
# feature "Testing infrastructure" do
#   scenario "checks if homepage says 'Testing infrastructure working!'" do
#     visit '/'
#     expect(page).to have_content('Testing infrastructure working!')
#   end
# end



feature "fill in names in form" do
  scenario "checks that players can fill in their names on a form and submit that form" do
    visit '/'
    fill_in 'Player 1', :with => "Skeeter"
    fill_in 'Player 2', :with => "Hutchkins"
    click_button("Submit")
    # visit '/names-submit'
    # save_and_open_page
    expect(page).to have_content('Skeeter vs Hutchkins BATTLE BEGINS!!!')
  end
end
