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
FactoryBot.define do
  factory :appointment do
    patient_id { 1 }
    psychologist_id { 1 }
    timeslot_id { 1 }
    status { "MyString" }
    notes { "MyText" }
  end
end
