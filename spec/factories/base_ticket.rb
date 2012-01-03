FactoryGirl.define do
  trait :base_ticket do
    status "Ticket 1"
    assignee
    job
  end
end
