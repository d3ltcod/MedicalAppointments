class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  validates_presence_of :email
  validates_presence_of :password
  validates_presence_of :full_name
  validates_presence_of :city
  validates_presence_of :role

  enum role: {
    patient: '0',
    doctor: '1'
  }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def patient
    self.role == 'patient'
  end

  def doctor
    self.role == 'doctor'
  end
end
