class Patient
  attr_accessor :name, :appointments 
  @@all = []
  def initialize(name)
    @name = name 
    @appointments = []
    @@all << self
  end
  
  def new_appointment(doctor, date)
    apt = Appointment.new(self, doctor, date)
    @appointments << apt 
  end
end 