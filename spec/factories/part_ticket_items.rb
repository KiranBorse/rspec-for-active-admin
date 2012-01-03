# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :part_ticket_item do
    subtotal 0.00
    quantity 1
    part
    ticket
  end
end
