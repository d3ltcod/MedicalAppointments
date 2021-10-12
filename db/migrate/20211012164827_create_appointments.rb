class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.belongs_to :user
      t.timestamps
    end

    create_table :patients do |t|
      t.belongs_to :user
      t.timestamps
    end

    create_table :appointments do |t|
      t.belongs_to :doctor
      t.belongs_to :patient
      t.datetime   :appointment_date, null: false
      t.string     :observations
      t.timestamps
    end
  end
end