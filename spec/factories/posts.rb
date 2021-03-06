FactoryGirl.define do
  factory :post do
    date Date.today
    rational "Some Rational"
    overtime_request 3.5
    user
  end

    factory :second_post, class: "Post" do
    date Date.yesterday
    rational "Some more content"
    overtime_request 0.5
    user
  end
end