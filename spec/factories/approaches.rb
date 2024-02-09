# == Schema Information
#
# Table name: approaches
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :approach do
    name { "MyString" }
  end
end
