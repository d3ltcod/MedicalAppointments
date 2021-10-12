FactoryBot.define do
  factory :user do
    email { "alice@email.com" }
    password { "Pa$$w0rd" }
    full_name { "Alice Power" }
    city { "Barcelona" }
    role { "patient" }
  end
end
