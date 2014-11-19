class CreatePhases < ActiveRecord::Migration
  def change
    create_table :phases do |t|
      t.string :name
      t.string :description
      t.integer :nb_win
      t.references :tournoi

      t.timestamps
    end

    add_column :phases, :slug, :string
    add_index :phases, :slug, unique: true
  end
end
