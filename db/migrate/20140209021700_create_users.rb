class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fisrt_name
      t.string :last_name
      t.string :email
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :phone
      t.string :title

      t.timestamps
    end
  end
end
