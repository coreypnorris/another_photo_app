# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "MyString"
    user_name "MyString"
    password_digest "MyString"
  end
end
