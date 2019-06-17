feature "View Bookmarks" do
  scenario "it shows bookmarks" do
    visit '/bookmarks'
    
    expect(page).to have_content("http://bbc.co.uk")
    expect(page).to have_content("http://makers.tech")
    expect(page).to have_content("http://google.co.uk")
  end
end