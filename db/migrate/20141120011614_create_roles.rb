class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
    	t.references :tournoi
    	t.string :name
    	t.string :price
    	t_integer :nb_place
      	t.timestamps
    end
  end
end
