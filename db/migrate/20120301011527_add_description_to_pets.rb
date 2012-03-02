class AddDescriptionToPets < ActiveRecord::Migration
  def change
    add_column :pets, :description, :text

  end
end
