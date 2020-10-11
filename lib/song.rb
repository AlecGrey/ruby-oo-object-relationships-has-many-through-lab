
class Song

    attr_reader :name, :artist, :genre

    @@all = []

    # ~~ CLASS METHODS ~~ #

    def self.all
        @@all
    end

    # ~~ INSTANCE METHODS ~~ #

    def initialize(name, artist, genre)
        @name, @artist, @genre = name, artist, genre
        save
    end

    def save
        @@all << self
    end

end