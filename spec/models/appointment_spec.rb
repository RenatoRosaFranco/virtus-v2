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
require 'rails_helper'

RSpec.describe Appointment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
