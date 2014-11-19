class CreateSuscribers < ActiveRecord::Migration
  def change
    create_table :suscribers do |t|
      t.references :user
      t.integer :role
      t.references :tournoi
      t.integer :payd

      t.timestamps
    end
  end
end
