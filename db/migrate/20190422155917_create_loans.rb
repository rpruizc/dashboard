class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      ## Database authenticatable
      t.string  :name,     null: false, default: ""
      t.integer :user_id,  null: false, default: 0
      t.integer :coin_id,  null: false, default: 0
      t.float   :amount,   null: false, default: 0.0
      t.integer :term,     null: false, default: 0
      t.float   :LTV,      null: false, default: 0.0
      t.float   :interest, null: false, default: 0.0

      t.timestamps
    end

    add_index :loans, :coin_id, unique: true

  end
end
