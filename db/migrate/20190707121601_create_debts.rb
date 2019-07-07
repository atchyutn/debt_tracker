class CreateDebts < ActiveRecord::Migration[5.2]
  def change
    create_table :debts do |t|
      t.string :name
      t.integer :user_id
      t.integer :category_id
      t.integer :payee_id
      t.integer :total_months
      t.integer :months_left
      t.integer :original_due
      t.integer :emi_amount
      t.date :starts_at
      t.date :ends_at

      t.timestamps
    end
  end
end
