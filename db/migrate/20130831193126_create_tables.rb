class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :identifier
      t.text :location
      t.boolean :state, default: true

      t.timestamps
    end
  end
end
