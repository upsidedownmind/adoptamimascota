class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.boolean :enabled
      t.datetime :creationDate

      t.timestamps
    end
  end
end
