require "pry"

class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name_value, artist_value, genre_value)
        @name = name_value
        @artist = artist_value
        @genre = genre_value
        @@count += 1
        @@artists << artist_value
        @@genres << genre_value
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
        # binding.pry
        # genre_count_hash = {}
        # @@genres.each do |genre|
        #     if genre_count_hash.key?(genre)
        #         genre_count_hash[genre] += 1
        #     else
        #         genre_count_hash[genre] = 1
        #     end
        # end
        # genre_count_hash
        @@genres.tally
    end

    def self.artist_count
        # binding.pry
        @@artists.tally
    end
end

lucifer = Song.new("Lucifer", "Jay-Z", "rap")
hit_me = Song.new('hit me baby one more time', 'Brittany Spears', 'pop')
ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")

binding.pry