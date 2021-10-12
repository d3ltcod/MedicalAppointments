require 'rails_helper'

RSpec.describe User, type: :model do
  context "validate required attributtes" do
    it "is valid with valid attributes" do
      user = FactoryBot.build :user
      expect(user).to be_valid
    end
    it "is not valid without a email" do
      user = FactoryBot.build :user, email: nil
      expect(user).to_not be_valid
    end
    it "is not valid without a passwsord" do
      user = FactoryBot.build :user, password: nil
      expect(user).to_not be_valid
    end
    it "is not valid without a full_name" do
      user = FactoryBot.build :user, full_name: nil
      expect(user).to_not be_valid
    end
    it "is not valid without a city" do
      user = FactoryBot.build :user, city: nil
      expect(user).to_not be_valid
    end
    it "is not valid without a role" do
      user = FactoryBot.build :user, role: nil
      expect(user).to_not be_valid
    end
  end
end
