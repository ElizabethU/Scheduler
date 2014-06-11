# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :meeting do
    start "2014-06-11 12:37:32"
    user_id 1
    exec_id 1
    duration 1
    location "MyString"
  end
end
