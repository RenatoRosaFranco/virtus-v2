# frozen_string_literal: true

class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer  :user_id
      t.integer  :reviewed_id
      t.integer  :attention
      t.integer  :environment
      t.integer  :punctuality
      t.text     :comments
      t.decimal  :overall_rating

      t.timestamps
    end
  end
end
