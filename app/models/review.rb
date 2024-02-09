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
class Review < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :reviewed, class_name: 'User', foreign_key: 'reviewed_id'

  # Callbacks
  before_save :calculate_overall_rating

  # Validations
  validates :attention, :environment, :punctuality, presence: true,
            numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }

  validates :overall_rating, presence: true,
            numericality: { greater_than_or_equal_to: 0.0, less_than_or_equal_to: 5.0 }

  # Methods
  private

  def calculate_overall_rating
    if attention && environment && punctuality
      self.overall_rating = (attention + environment + punctuality) / 3.0
    end
  end
end
