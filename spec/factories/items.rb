FactoryBot.define do
  factory :item do
    name              { '魚' }
    text              { '新鮮' }
    buy_date          { '2020-08-27' }
    limit_date        { '2020-09-01' }
    association :user
  end
end