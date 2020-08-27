require 'pry'
class Song 
    attr_accessor :name, :artist, :genre

    @@count = 0

    @@artists = []

    @@genres = []

    def initialize(name,artist,genre)
        @name = name 
        @artist = artist 
        @genre = genre
        @@artists << artist
        @@genres << genre
        @@count += 1
    end 

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end 

    def self.genres
        @@genres.uniq
    end 

    def self.genre_count
        @@genres.to_h {|genre| [genre, @@genres.count(genre)]}
    end 

    def self.artist_count
        @@artists.to_h {|artist| [artist, @@artists.count(artist)]}
    end 
end 