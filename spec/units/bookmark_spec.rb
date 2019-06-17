require 'bookmark'

describe Bookmark do  

  describe ".all" do
    it "returns a list of bookmarks" do 
      bookmarks = Bookmark.all      
      expect(bookmarks).to include("http://bbc.co.uk")
      expect(bookmarks).to include("http://makers.tech")
      expect(bookmarks).to include("http://google.co.uk")
    end
  end
end