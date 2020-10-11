
class Artist

    attr_reader :name

    @@all = []

    # ~~ CLASS METHODS ~~ #

    def self.all
        @@all
    end

    # ~~ INSTANCE METHODS ~~ #
    
    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def new_song(name, genre)
        # creates a new song that knows it belongs to this artist
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        # collects the genre of each song belonging to this artist
        self.songs.map {|song| song.genre}.uniq
    end

end