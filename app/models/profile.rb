# frozen_string_literal: true

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
class Profile < ApplicationRecord
  # Associations
  belongs_to :user

  # Enum
  enum genders: { male: 0, female: 1 }

  # Validations
  validates :username, uniqueness: { case_sensitive: false }, presence: true
  validates :bio, length: { maximum: 145 }, allow_blank: true
  validates :gender, inclusion: { in: User.genders.keys }
end
