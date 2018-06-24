FactoryBot.define do
  factory :article do
    title { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
  end
end
