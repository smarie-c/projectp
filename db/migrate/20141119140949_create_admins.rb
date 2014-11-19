class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.references :user
      t.integer :role
      t.references :tournoi

      t.timestamps
    end
  end
end
