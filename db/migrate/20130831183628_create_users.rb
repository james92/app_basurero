class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :employee
      t.references :role
      t.string :username
      t.string :password
      t.boolean :state, default: true

      t.timestamps
    end
    add_index :users, :employee_id
    add_index :users, :role_id
  end
end
