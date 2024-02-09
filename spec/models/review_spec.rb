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
require 'rails_helper'

RSpec.describe Review, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
