class AddPictureToPets < ActiveRecord::Migration
  def change
    add_column :pets, :picture, :string

  end

  def self.up
    change_table :pets do |t|
      t.has_attached_file :picture
    end
  end

  def self.down
    drop_attached_file :pets, :picture
  end

end
