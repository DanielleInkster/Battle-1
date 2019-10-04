feature 'Names' do
  scenario "submit players' names" do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
    end
  end

feature 'Points' do
  scenario "see opponents hit points" do
    sign_in_and_play
    expect(page).to have_content("Mittens's HP:")
    expect(page).to have_content '60/60 HP'
  end
  
  scenario 'see players hit points' do
    sign_in_and_play
    expect(page).to have_content("Dave's HP:")
    expect(page).to have_content '60/60 HP'
  end

  scenario "reduce opponents hit points" do
    allow_any_instance_of(Player).to receive(:random) { 10 }
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content '50/60 HP'
    expect(page).to have_content "Attacked Mittens's monster for 10 damage!"
  end
end

feature 'Switch' do
  scenario "allows players to alternate turns" do
    allow_any_instance_of(Player).to receive(:random) { 10 }
    sign_in_and_play
    click_button 'Attack!'
    click_button 'Attack!'
    expect(page).to have_content '50/60 HP'
    expect(page).to have_content "Attacked Dave's monster for 10 damage!"
  end
end

  feature 'Lose' do  
    scenario "allows a player to lose" do
    allow_any_instance_of(Player).to receive(:random) { 10 }
    sign_in_and_play
    play_to_lose
    expect(page).to have_content '0/60 HP'
    expect(page).to have_content "Mittens loses!"
    end
end
