# == Schema Information
#
# Table name: approaches
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Approach < ApplicationRecord
  # Validations
  validates :name, presence: true, uniqueness: true
end
