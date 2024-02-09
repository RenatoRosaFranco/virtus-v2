# frozen_string_literal: true

class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer  :patient_id
      t.integer  :psychologist_id
      t.integer  :timeslot_id
      t.string   :status
      t.text     :notes

      t.timestamps
    end
  end
end
