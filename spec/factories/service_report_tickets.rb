# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :service_report_ticket, :traits => [:base_ticket] do
    reason "MyString"
  end
end
