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
require 'rails_helper'

RSpec.describe Payment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
