# frozen_string_literal: true

# == Schema Information
#
# Table name: specialties
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Specialty < ApplicationRecord
  # Validations
  validates :name, presence: true, uniqueness: true
end
