# frozen_string_literal: true

# == Schema Information
#
# Table name: timeslots
#
#  id              :integer          not null, primary key
#  available       :boolean
#  end_time        :datetime
#  start_time      :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  psychologist_id :integer
#
class Timeslot < ApplicationRecord
  # Association
  belongs_to :psychologist, class_name: 'User'
  has_one :appointment

  # Validations
  validates :start_time, :end_time, presence: true
  validates :end_time_after_start_time

  private

  def end_time_after_start_time
    return if end_time.blank? || start_time.blank?

    if end_time < start_time
      errors.add(:end_time, 'must be after the start time')
    end
  end
end
