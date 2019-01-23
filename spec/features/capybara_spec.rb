
feature 'Capybara tests...' do
  scenario 'Players can see their submitted names on the screen' do
    sign_in_and_play
    expect(page).to have_content 'Nikhil Will'
  end
  
  scenario "Player 1 can see Player 2's hitpoints" do
    sign_in_and_play
    expect(page).to have_content 'Hitpoints: 23'
  end
end