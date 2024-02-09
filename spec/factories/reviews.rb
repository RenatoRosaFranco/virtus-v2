# == Schema Information
#
# Table name: reviews
#
#  id             :integer          not null, primary key
#  attention      :integer
#  comments       :text
#  environment    :integer
#  overall_rating :decimal(, )
#  punctuality    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  reviewed_id    :integer
#  user_id        :integer
#
FactoryBot.define do
  factory :review do
    user_id { 1 }
    reviewed_id { 1 }
    attention { 1 }
    environment { 1 }
    punctuality { 1 }
    comments { "MyText" }
    overall_rating { "" }
    overall_rating { "" }
  end
end
