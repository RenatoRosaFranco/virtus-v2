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
require 'rails_helper'

RSpec.describe Message, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
