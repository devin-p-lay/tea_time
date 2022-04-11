class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :title
      t.float :price
      t.integer :frequency
      t.integer :status, default: 0
      t.references :tea, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
    end
  end
end
