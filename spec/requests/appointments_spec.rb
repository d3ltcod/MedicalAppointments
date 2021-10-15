require 'rails_helper'

RSpec.describe "Appointments", type: :request do
  describe "GET /index" do
    context "user is not authenticated" do
      it "has status redirect" do
        get appointments_url
        expect(response).to have_http_status(302)
      end
      
      it "redirect to the login page" do
        get appointments_url
        expect(response).to redirect_to('/users/sign_in')
      end
    end

    context "user is authenticated" do
      before do
        user = FactoryBot.build :user
        user.save
  
        sign_in user
      end
  
      it "returns a sucessful status" do
        get appointments_url
        expect(response).to have_http_status(200)
      end
    end
  end

  describe "GET /show/:id" do
    context "user is not authenticated" do
      it "has status redirect" do
        get appointment_url('1')
        expect(response).to have_http_status(302)
      end
      
      it "redirect to the login page" do
        get appointment_url('1')
        expect(response).to redirect_to('/users/sign_in')
      end
    end

    context "user is authenticated" do
      before do
        @user = FactoryBot.build :user
        @user.save
  
        sign_in @user
      end
  
      it "returns an error not found if appointment does not exist" do
        get appointment_url('1')
        expect(response).to have_http_status(404)
      end

      it "returns a sucessful status" do
        patient = Patient.find(@user.id)
        appointment = FactoryBot.build :appointment, patient: patient
        appointment.save

        patient.appointments << appointment
        patient.save

        get appointments_url('1')
        expect(response).to have_http_status(200)
      end
    end
  end
end
