
class Genre

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

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        # collects all artists that have songs belonging to this genre
        self.songs.map {|song| song.artist}.uniq
    end

end