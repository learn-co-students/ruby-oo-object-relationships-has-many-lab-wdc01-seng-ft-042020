require 'pry'
#require_relative './artist.rb'
class Song

    attr_reader :name
    attr_accessor :artist

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if self.artist then self.artist.name end
    end
end
