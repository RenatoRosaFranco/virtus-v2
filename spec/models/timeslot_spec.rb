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
require 'rails_helper'

RSpec.describe Timeslot, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
