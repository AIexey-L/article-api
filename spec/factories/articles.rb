FactoryBot.define do
  factory :article do
    title { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
    after(:create) do |article|
      create :like, article: article
      create :dislike, article: article
    end
  end

  factory :like do
    count { Faker::Number.number(3) }
  end

  factory :dislike do
    count { Faker::Number.number(3) }
  end

end
