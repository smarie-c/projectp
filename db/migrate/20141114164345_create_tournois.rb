class CreateTournois < ActiveRecord::Migration
  def change
    create_table :tournois do |t|
      t.string :name
      t.integer :nb_player
      t.date :date
      t.integer :nb_phase
      t.string :cash_prize
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end
