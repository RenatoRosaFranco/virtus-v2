# frozen_string_literal: true

class AddColumnAvatarToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :avatar, :string
  end
end
