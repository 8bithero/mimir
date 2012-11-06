class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :year
      t.string :month

      t.timestamps
    end
  end
end
