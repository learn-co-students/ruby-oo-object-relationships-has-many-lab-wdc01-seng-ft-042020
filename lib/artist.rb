class Artist
  attr_accessor :name
  attr_reader :songs


  def initialize(name)
    @name = name
    @songs = []
  end

  def self.song_count
    Song.all.length
  end
 
  def add_song(song)
    song.artist = self
    self.songs = song
  end

  def add_song_by_name(name)
    add_song(Song.new(name))
  end

  def songs=(song)
    @songs << song
  end
end