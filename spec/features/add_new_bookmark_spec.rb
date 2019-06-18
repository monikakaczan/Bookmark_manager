feature 'add new bookmark' do
  scenario 'it adds a new bookmark' do
    visit '/bookmarks/new'
    fill_in :url, with: 'www.yahoo.com'
    click_button 'Add Bookmark'

    expect(page).to have_content('www.yahoo.com')
  end
end
