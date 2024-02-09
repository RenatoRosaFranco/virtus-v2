# frozen_string_literal: true

class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table  :messages do |t|
      t.integer   :sender_id
      t.integer   :receiver_id
      t.text      :body
      t.boolean   :read
      t.boolean   :archived

      t.timestamps
    end
  end
end
