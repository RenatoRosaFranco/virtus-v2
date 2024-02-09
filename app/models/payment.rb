# frozen_string_literal: true

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
class Payment < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :appointment, optional: true
end
