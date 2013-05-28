class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :backer_id, null: false
      t.text :token, null: false
      t.text :payer_id, foreign_key: false
      t.text :gateway_id, foreign_key: false 
      t.decimal :gateway_fee
      t.timestamps
    end
  end
end
