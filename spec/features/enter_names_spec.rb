feature 'Names' do
  scenario "submit players' names" do
    visit('/')
    fill_in :name1, with: 'Dave'
    fill_in :name2, with: 'Mittens'
    click_button "Enter both players' names"
    expect(page).to have_content 'Dave vs. Mittens'
  end
end