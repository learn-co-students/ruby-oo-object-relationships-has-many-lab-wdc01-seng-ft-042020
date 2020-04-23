
class Song
    attr_accessor :name
    attr_reader :artist
    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def artist=(artist)
        artist.songs << self
        @artist = artist
    end

    def artist_name
        self.artist ? self.artist.name : nil
    end

end