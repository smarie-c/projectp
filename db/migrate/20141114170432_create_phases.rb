class CreatePhases < ActiveRecord::Migration
  def change
    create_table :phases do |t|
      t.string :name
      t.string :description
      t.integer :nb_win
      t.references :tournoi

      t.timestamps
    end
  end
end
