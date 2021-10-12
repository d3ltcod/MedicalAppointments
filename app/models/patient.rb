class Patient < User
  belongs_to :user, :dependent => :destroy
  has_many :appointments, -> { order(appointment_date: :desc) }, :dependent => :destroy
  has_many :doctors, through: :appointments
end
