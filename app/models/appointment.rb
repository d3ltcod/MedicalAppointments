class Appointment < ApplicationRecord
  validates_presence_of :appointment_date

  belongs_to :doctor
  belongs_to :patient
  has_many_attached :images, :dependent => :destroy
end
