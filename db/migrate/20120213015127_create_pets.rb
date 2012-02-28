class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.datetime :creationDate
      t.date :lostDate
      t.date :foundDate
      t.date :adoptedDate

      t.timestamps
    end
  end
end
