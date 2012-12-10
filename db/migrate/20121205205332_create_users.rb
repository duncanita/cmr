class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :company
      t.string :piva
      t.string :address
      t.string :city

      t.timestamps
    end
  end
end
