class AddPictureFileNameToPets < ActiveRecord::Migration
  def change
    add_column :pets, :picture_file_name, :string

  end
end
