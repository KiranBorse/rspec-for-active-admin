# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :service do
    title "Service 1"
    rate 9.99
    unit 'unit for service'
  end
end
