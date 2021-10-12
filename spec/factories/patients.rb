FactoryBot.define do
  factory :patient do
    email { "alice@email.com" }
    password { "Pa$$w0rd" }
    full_name { "Alice Power" }
    city { "Barcelona" }
    role { "patient" }
  end
end
