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
class Message < ApplicationRecord
  # Associations
  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
  belongs_to :receiver, class_name: 'User', foreign_key: 'receiver_id'

  # Scopes
  scope :unread,   -> { where(read: false) }
  scope :archived, -> { where(archived: true) }
  scope :recents,  -> { order(read: :asc, created_at: :desc) }

  # Callbacks
  after_initialize :set_defaults, unless: :persisted?

  private

  def set_defaults
    self.read ||= false
    self.archive ||= false
  end
end
