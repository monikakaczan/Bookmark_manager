feature "View Bookmarks" do
  scenario "it shows bookmarks" do
    Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Distroy all software")
    Bookmark.create(url: "http://www.makersacademy.com", title: "Makers academy")
    Bookmark.create(url: "http://www.google.com", title: "Google")

    visit '/bookmarks'
    expect(page).to have_link("Distroy all software", href: "http://www.destroyallsoftware.com")
    expect(page).to have_link("Makers academy", href: "http://www.makersacademy.com")
    expect(page).to have_link("Google", href: "http://www.google.com")
  end
end
