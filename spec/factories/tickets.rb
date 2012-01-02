# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ticket do
    status "Ticket 1"
    service_total 0.00
    parts_total 0.00
    total 0.00
    customer_po "string"
    association :assignee
  end
end
