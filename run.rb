require 'pry'
require_relative './lib/song.rb'
require_relative './lib/genre.rb'
require_relative './lib/artist.rb'
require_relative './lib/appointment.rb'
require_relative './lib/patient.rb'
require_relative './lib/doctor.rb'

# jay_z = Artist.new("Jay-Z")
# rap = Genre.new("rap")
# pop = Genre.new("pop")

# ninety_nine_problems = jay_z.new_song("Ninety Nine Problems", rap)
# song_2 = jay_z.new_song("song 2", rap)
# song_3 = jay_z.new_song("song 3", pop)

doctor_who = Doctor.new('The Doctor')
hevydevy = Patient.new('Devin Townsend')
appointment = hevydevy.new_appointment(doctor_who, 'Friday, January 32nd')

binding.pry