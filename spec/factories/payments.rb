# == Schema Information
#
# Table name: payments
#
#  id             :integer          not null, primary key
#  amount         :decimal(, )
#  status         :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  appointment_id :integer
#  transaction_id :string
#  user_id        :integer
#
# Indexes
#
#  index_payments_on_appointment_id  (appointment_id)
#  index_payments_on_user_id         (user_id)
#
FactoryBot.define do
  factory :payment do
    user { nil }
    appointment { nil }
    amount { "9.99" }
    status { "MyString" }
    transaction_id { "MyString" }
  end
end
