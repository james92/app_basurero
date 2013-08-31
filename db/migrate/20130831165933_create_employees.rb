class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.references :job
      t.string :first_name
      t.string :last_name
      t.boolean :gender
      t.references :country
      t.string :document_type
      t.string :document
      t.string :nit
      t.string :email
      t.string :password
      t.text :address
      t.boolean :state, default: true

      t.timestamps
    end
    add_index :employees, :job_id
    add_index :employees, :country_id
  end
end
