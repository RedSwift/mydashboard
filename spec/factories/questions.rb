FactoryGirl.define do
  factory :question do
    questions { Faker:Lorem.sentence }
    user nil
  end
end
