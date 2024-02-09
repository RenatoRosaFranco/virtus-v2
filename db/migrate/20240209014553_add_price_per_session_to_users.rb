# frozen_string_literal: true

class AddPricePerSessionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :price_per_session, :decimal, precision: 6, scale: 2, default: 6.0
  end
end
