require 'rails_helper'

RSpec.describe "Directory", type: :request do
  describe "GET /index" do
    context "user is not authenticated" do
      it "has status redirect" do
        get directory_url
        expect(response).to have_http_status(302)
      end
      
      it "redirect to the login page" do
        get directory_url
        expect(response).to redirect_to('/users/sign_in')
      end
    end

    context "user is authenticated" do
      before do
        @user = FactoryBot.build :user
        @user.save
  
        sign_in @user
      end
  
      it "returns a sucessful status" do
        get directory_url
        expect(response).to have_http_status(200)
      end

      it "returns a 401 status if user is not a patient" do
        @user.role="doctor"
        @user.save
  
        get directory_url
        expect(response).to have_http_status(401)
      end
    end
  end
end
