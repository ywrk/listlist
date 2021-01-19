FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 8)}
    email                 {Faker::Internet.free_email}
    password              {"aaa111"}
    password_confirmation {password}
  end
end
