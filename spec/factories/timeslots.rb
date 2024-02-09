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
FactoryBot.define do
  factory :timeslot do
    start_time { "2024-02-08 19:36:16" }
    end_time { "2024-02-08 19:36:16" }
    psychologist_id { 1 }
    available { false }
  end
end
