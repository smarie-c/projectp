class CreateTournois < ActiveRecord::Migration
  def change
    create_table :tournois do |t|
      t.string :name
      t.date :date
      t.integer :nb_phase
      t.text :cash_prize
      t.text :description
      t.references :user

      t.timestamps
    end

    add_column :tournois, :slug, :string
    add_index :tournois, :slug, unique: true
  end
end
