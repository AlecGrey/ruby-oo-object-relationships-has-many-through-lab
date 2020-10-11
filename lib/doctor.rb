
class Doctor

    attr_reader :name

    @@all = []

    # ~~ CLASS METHODS ~~ #

    def self.all
        @@all
    end

    # ~~ INSTANCE METHODS ~~ #

    def initialize(name)
        @name = name
        self.save
    end

    def save
        @@all << self
    end
    
    def appointments
        # iterates through Appointment.all, and searches for this doctor's appts
        Appointment.all.select {|appt| appt.doctor == self}
    end

    def new_appointment(patient, date)
        # creates a new appointment, that knows it belongs to doctor
        Appointment.new(date, patient, self)
    end

    def patients
        # iterates this doc's appts and collects all unique patients belonging to it's appts
        self.appointments.map {|appt| appt.patient}.uniq
    end

end