feature 'add new bookmark' do
  scenario 'it adds a new bookmark' do
    visit '/bookmarks/new'
    fill_in('url', with: 'http://www.testbookmark.com')
    fill_in('title', with: 'My favourites')
    click_button 'Add Bookmark'

 expect(page).to have_link('My favourites', href: 'http://www.testbookmark.com')
  end
end
