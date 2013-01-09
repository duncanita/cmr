class CreatePackagings < ActiveRecord::Migration
  def change
    create_table :packagings do |t|
      t.string :description

      t.timestamps
    end
  end
end
