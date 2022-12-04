class Song
@@count = 0
@@genres = []
@@artists = []
@@artist_count = {}
@@genre_count = {}
attr_accessor :artist
attr_accessor :genre
attr_accessor :name

def initialize(name, artist, genre)
    @@count += 1
    @@genres.push(genre)
    @@artists.push(artist)
    @name = name
    @genre = genre
    @artist = artist
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

def self.artist_count
@@artists.each do |artist|
if !@@artist_count.has_key?(artist)
    @@artist_count[artist] = 1
else
    @@artist_count[artist] += 1
            end
        end
        return @@artist_count
    end

def self.genre_count
    @@genres.each do |genre|
        if !@@genre_count.has_key?(genre)
            @@genre_count[genre] = 1
        else
            @@genre_count[genre] += 1
        end
    end
    return @@genre_count
end

end