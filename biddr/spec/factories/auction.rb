FactoryGirl.define do
  factory :auction do
    title "Potato Salad"
    details "This is a good potato salad only missing some potatoes"
    ends_on "2016-11-11 11:11:11"
    reserve_price 100
  end
end
