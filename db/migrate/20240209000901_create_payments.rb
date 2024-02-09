# frozen_string_literal: true

class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table   :payments do |t|
      t.references :user, foreign_key: true
      t.references :appointment, foreign_key: true
      t.decimal    :amount
      t.string     :status
      t.string     :transaction_id

      t.timestamps
    end
  end
end
