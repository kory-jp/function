class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :password_digest
      t.string :image
      t.string :introduce
      t.integer :age
      t.string :sex
      t.string :address

      t.timestamps
    end
  end
end
