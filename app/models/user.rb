# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  price_per_session      :decimal(6, 2)    default(6.0)
#  referral_code          :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  role                   :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_referral_code         (referral_code) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  # Enum
  enum role: { patient: 0, psychologist: 1 }
  enum gender: { male: 0, female: 1}

  # Associations
  has_one :profile, dependent: :destroy

  # Appointments
  has_many :patient_appointments, foreign_key: :patient_id, class_name: 'Appointment'
  has_many :psychologist_appointments, foreign_key: :psychologist_id, class_name: 'Appointment'
  has_many :timeslots, foreign_key: :psychologist_id

  # Messages
  has_many :sent_messages, class_name: 'Message', foreign_key: 'sender_id'
  has_many :received_messages, class_name: 'Message', foreign_key: 'receiver_id'

  # Favotires
  has_many :favorites, dependent: :destroy
  has_many :favorited_psychologists, through: :favorites, source: :psychologist

  has_many :favorited_by, class_name: 'Favorite', foreign_key: 'psychologist_id', dependent: :destroy
  has_many :users_who_favorited, through: :favorited_by, source: :user

  # Reviews
  has_many :reviews_given, class_name: 'Review', foreign_key: 'user_id', dependent: :destroy
  has_many :reviews_received, class_name: 'Review', foreign_key: 'reviewed_id', dependent: :destroy

  # Callbacks
  before_create :generate_referral_code

  # Nested
  accepts_nested_attributes_for :profile

  # Include default devise modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Validations
  validates :price_per_session, presence: true,
          numericality: { greater_than_or_equal_to: 6, less_than_or_equal_to: 350 }

  private

  def generate_referral_code
    self.referral_code = GenerateReferralCodeService.call
  end
end
