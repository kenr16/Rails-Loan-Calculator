class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.decimal :principal
      t.integer :months
      t.float :years
      t.decimal :interest

      t.timestamps
    end
  end
end
