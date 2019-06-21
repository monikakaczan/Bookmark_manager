require 'bookmark'
require 'database_helpers'

describe Bookmark do

  describe ".all" do
    it "returns a list of bookmarks" do
      connection= PG.connect(dbname: 'bookmark_manager_test')

      bookmark = Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")
      Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Distroy all software")
      Bookmark.create(url: "http://www.google.com", title: "Google")

      bookmarks = Bookmark.all
      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq "Makers Academy"
      expect(bookmarks.first.url).to eq "http://www.makersacademy.com"

    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      bookmark= Bookmark.create(url: 'http://www.testbookmark.com' , title: "My favourites")
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data.first['id']
      expect(bookmark.title).to eq 'My favourites'
      expect(bookmark.url).to eq 'http://www.testbookmark.com'

      end
    end

    describe ".delete" do
      it 'deletes a bookmark' do
        bookmark= Bookmark.create(url: 'http://www.testbookmark.com' , title: "My favourites")
        persisted_data = persisted_data(id: bookmark.id)
        bookmark = Bookmark.delete(id: bookmark.id)

        bookmarks = Bookmark.all

        expect(bookmarks).to be_empty
      end
    end
  end
