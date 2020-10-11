
class Patient

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

    def new_appointment(doctor, date)
        # creates a new appointment, that knows it belongs to doctor
        Appointment.new(date, self, doctor)
    end

    def appointments
        # iterates through Appointment.all, and searches for this patient's appts
        Appointment.all.select {|appt| appt.patient == self}
    end

    def doctors
        # iterates the patient's appts and collects all unique docs belonging to it's appts
        self.appointments.map {|appt| appt.doctor}.uniq
    end

end