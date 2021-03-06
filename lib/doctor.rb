class Doctor 
	attr_reader :name
	@@all =[]
	def initialize(name)
		@name = name
		@@all<<self
	end

	def new_appointment(patient, date)
		Appointment.new(patient,self,date)
	end

	def self.all
		@@all 
	end

	def appointments
		Appointment.all.select do |app| app.doctor == self end
	end

	def patients
		appointments.map(&:patient)
	end

end