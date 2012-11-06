class CreateActualValues < ActiveRecord::Migration
  def change
    create_table :actual_values do |t|
      t.references :record
      t.references :revenue_code
      t.decimal    :value, :precision => 25, :scale => 5

      t.timestamps
    end
  end
end
