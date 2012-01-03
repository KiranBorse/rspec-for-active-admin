# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :service_ticket_item do
    actual 0.00
    chargeable 0.00
    service_date "2011-12-15"
    subtotal_act 0.00
    subtotal_chg 0.00
    service
    ticket
  end
end
