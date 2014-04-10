FactoryGirl.define do
  factory :user do
    user_name "foo"
    email { "#{user_name}@example.com" }
    password "foobar"
    password_confirmation { "#{password}" }
  end
end
