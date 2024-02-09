# frozen_string_literal: true

# == Schema Information
#
# Table name: appointments
#
#  id              :integer          not null, primary key
#  notes           :text
#  status          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  patient_id      :integer
#  psychologist_id :integer
#  timeslot_id     :integer
#
class Appointment < ApplicationRecord
  # Associations
  belongs_to :patient, class_name: 'User'
  belongs_to :psychologist, class_name: 'User'
  has_one :payment
  belongs_to :timeslot

  # Validations
  validates :status, presence: true
end
