class AddSpecieIdToPets < ActiveRecord::Migration
  def change
    add_column :pets, :specie_id, :int

  end
end
