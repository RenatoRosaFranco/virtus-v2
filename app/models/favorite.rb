# == Schema Information
#
# Table name: favorites
#
#  id              :integer          not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  psychologist_id :integer
#  user_id         :integer
#
# Indexes
#
#  index_favorites_on_psychologist_id              (psychologist_id)
#  index_favorites_on_user_id                      (user_id)
#  index_favorites_on_user_id_and_psychologist_id  (user_id,psychologist_id) UNIQUE
#
class Favorite < ApplicationRecord
  # Associações
  belongs_to :user
  belongs_to :psychologist, class_name: 'User', foreign_key: 'psychologist_id'
end
