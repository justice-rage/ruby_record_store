require 'rspec'
require 'album'

describe('#save') do
  it("saves an album") do
    album = Album.new("Giant Steps", nil) # nil added as second argument
    album.save()
    album2 = Album.new("Blue", nil) # nil added as second argument
    album2.save()
    expect(Album.all).to(eq([album, album2]))
  end
end

describe '#Album' do
  describe('.all') do
    it("returns an empty array when there are no albums") do
      expect(Album.all).to(eq([]))
    end
  end


  describe('#==') do
    it("is the same album if it has the same attributes as another album") do
      album = Album.new("Blue", nil)
      album2 = Album.new("Blue", nil)
      expect(album).to(eq(album2))
    end
  end
end