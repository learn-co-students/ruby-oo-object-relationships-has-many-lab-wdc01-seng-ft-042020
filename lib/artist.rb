require_relative './song.rb'
require 'pry'
class Artist

    attr_accessor :name
    @@artists = []
    def initialize(name)
        @name = name
        @@artists << self
    end

    def songs
        Song.all.select {|song| song.artist_name == self.name}
    end

    def add_song(song_obj)
        # hello = Song.new("Hello")
        # adele.add_song(hello)
        # expect(adele.songs).to include(hello)
        # expect(hello.artist).to eq(adele)
        song_obj.artist = self

    end

    def add_song_by_name(song_title)
        s = Song.new(song_title)
        s.artist = self
    end

    def self.song_count
        Song.all.count
    end

    def self.all
        @@all
    end
end
