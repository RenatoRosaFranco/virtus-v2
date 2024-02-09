# == Schema Information
#
# Table name: messages
#
#  id          :integer          not null, primary key
#  archived    :boolean
#  body        :text
#  read        :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  receiver_id :integer
#  sender_id   :integer
#
FactoryBot.define do
  factory :message do
    sender_id { 1 }
    receiver_id { 1 }
    body { "MyText" }
    read { false }
    archived { false }
  end
end
