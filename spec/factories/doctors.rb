FactoryBot.define do
  factory :doctor do
    email { "bob@email.com" }
    password { "Pa$$w0rd" }
    full_name { "Bob Simpson" }
    city { "Tarragona" }
    role { "doctor" }
  end
end
