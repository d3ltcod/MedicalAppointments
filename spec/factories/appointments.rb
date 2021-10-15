FactoryBot.define do
  factory :appointment do
    doctor { FactoryBot.build :doctor }
    patient { FactoryBot.build :patient }
    appointment_date { DateTime.now() }
    observations { "Some observations" }
    images {[
      Rack::Test::UploadedFile.new("#{Rails.root}/spec/support/assets/image-1.png", 'image/png'),
      Rack::Test::UploadedFile.new("#{Rails.root}/spec/support/assets/image-2.png", 'image/png'),
      Rack::Test::UploadedFile.new("#{Rails.root}/spec/support/assets/image-3.png", 'image/png')
    ]}
   end
end