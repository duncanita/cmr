class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :instructions
      t.integer :number
      t.references :user

      t.timestamps
    end
  end
end
