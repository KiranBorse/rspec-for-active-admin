# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ticket, :traits => [:base_ticket] do
    service_total 0.00
    parts_total 0.00
    total 0.00
    customer_po "string"
  end
end
