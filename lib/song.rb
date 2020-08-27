class Song
    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
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
        @@genres.group_by{|e| e}.map{|gen, cnt| [gen, cnt.length]}.to_h
    end

    def self.artist_count
        @@artists.group_by{|e| e}.map{|art, cnt| [art, cnt.length]}.to_h
    end
end


