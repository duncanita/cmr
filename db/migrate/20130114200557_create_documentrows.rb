class CreateDocumentrows < ActiveRecord::Migration
  def change
    create_table :documentrows do |t|
      t.string :description
      t.integer :number_of_package
      t.float :weight
      t.float :volume
      t.references :document
      t.references :packaging

      t.timestamps
    end
  end
end
