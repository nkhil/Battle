
feature 'Capybara tests...' do
  scenario 'Players can see their submitted names on the screen' do
    visit('/')
    fill_in 'player1', with: 'Nikhil'
    fill_in 'player2', with: 'Will'
    click_button 'submit'
    expect(page).to have_content 'Nikhil Will'
  end
  
  scenario "Player 1 can see Player 2's hitpoints" do
    visit('/')
    fill_in 'player1', with: 'Nikhil'
    fill_in 'player2', with: 'Will'
    click_button 'submit'
    expect(page).to have_content 'Hitpoints: 23'
  end
end