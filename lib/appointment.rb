
class Appointment

    attr_reader :date, :patient, :doctor

    @@all = []

    # ~~ CLASS METHODS ~~ #

    def self.all
        @@all
    end

    #  ~~ INSTANCE METHODS ~~ #

    def initialize(date, patient, doctor)
        @date, @patient, @doctor = date, patient, doctor
        self.save
    end

    def save
        @@all << self
    end
    
end