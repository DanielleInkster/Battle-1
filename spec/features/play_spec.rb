feature 'Names' do
  scenario "submit players' names" do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
    end
  end

feature 'Points' do
  scenario "see opponents hit points" do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
    expect(page).to have_content '60/60 HP'
  end

  scenario "reduce apponents hit points" do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content '50/60 HP'
    expect(page).to have_content "Attacked Mittens's monster for 10 damage!"
  end
end

feature 'Switch' do
  scenario "alllows players to alternate turns" do
    sign_in_and_play
    click_button 'Attack!'
    click_button 'Attack!'
    expect(page).to have_content '50/60 HP'
  end
end


