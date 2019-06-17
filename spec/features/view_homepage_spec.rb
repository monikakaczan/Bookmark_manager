require 'bookmark'
feature Bookmark do
  scenario 'it displays the homepage' do
    visit '/'
    expect(page).to have_content 'Bookmark Manager'
  end
end
