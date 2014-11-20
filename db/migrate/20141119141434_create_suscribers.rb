class CreateSuscribers < ActiveRecord::Migration
  def change
    create_table :suscribers do |t|
      t.references :user
      t.references :role
      t.integer :payd

      t.timestamps
    end
  end
end
