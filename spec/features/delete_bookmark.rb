feature "Delete bookmark" do
  scenario 'it deletes a bookmark' do
    Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Distroy all software")

    visit '/bookmarks'
    expect(page).to have_link("Distroy all software", href: "http://www.destroyallsoftware.com")

    click_button('Delete')
    expect(page).not_to have_link("Distroy all software", href: "http://www.destroyallsoftware.com")

  end
end
