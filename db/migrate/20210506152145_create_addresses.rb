class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :street, null: false
      t.string :street_number, limit: 16, null: false
      t.string :appt_floor, limit: 16, null: false
      t.string :appt_number, limit: 16, null: false
      t.string :zipcode, limit: 16, null: false

      t.timestamps
    end

    add_reference :addresses, :state, index: true
  end
end
