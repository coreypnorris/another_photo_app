FactoryGirl.define do
  factory :user do
    sequence(:user_name) { |n| "foo#{n}" }
    sequence(:email) { |n| "bar#{n}@example.com" }
    password "foobar"
    password_confirmation { "#{password}" }
  end
end
