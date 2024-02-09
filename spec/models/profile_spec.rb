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
require 'rails_helper'

RSpec.describe Profile, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
