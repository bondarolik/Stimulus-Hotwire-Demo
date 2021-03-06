class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :name, null: false

      t.timestamps
    end
    
    add_reference :states, :country, index: true
  end
end
