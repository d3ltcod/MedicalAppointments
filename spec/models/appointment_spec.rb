require 'rails_helper'

RSpec.describe Appointment, type: :model do
  context "validate required attributtes" do
    it "is valid with valid attributes" do
      appointment = FactoryBot.build :appointment
      expect(appointment).to be_valid
    end
    it "is not valid without a doctor_id" do
      appointment = FactoryBot.build :appointment, doctor: nil
      expect(appointment).to_not be_valid
    end
    it "is not valid without a patient_id" do
      appointment = FactoryBot.build :appointment, patient: nil
      expect(appointment).to_not be_valid
    end
    it "is not valid without a appointment_date" do
      appointment = FactoryBot.build :appointment, appointment_date: nil
      expect(appointment).to_not be_valid
    end
  end
end
