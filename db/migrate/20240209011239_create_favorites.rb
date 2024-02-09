# frozen_string_literal: true

class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer  :user_id
      t.integer  :psychologist_id

      t.timestamps
    end

    add_index :favorites, :user_id
    add_index :favorites, :psychologist_id

    add_index :favorites, [:user_id, :psychologist_id], unique: true
  end
end
