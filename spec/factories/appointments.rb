FactoryBot.define do
  factory :appointment do
    doctor { FactoryBot.build :doctor }
    patient { FactoryBot.build :patient }
    appointment_date { DateTime.now() }
  end
end