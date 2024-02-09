# == Schema Information
#
# Table name: profiles
#
#  id         :integer          not null, primary key
#  avatar     :string
#  bio        :text
#  birthdate  :date
#  gender     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_profiles_on_user_id  (user_id)
#
FactoryBot.define do
  factory :profile do
    user { nil }
    bio { "MyText" }
    birthdate { "2024-02-08" }
    gender { 1 }
  end
end
