# == Schema Information
#
# Table name: specialties
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :specialty do
    name { "MyString" }
  end
end
