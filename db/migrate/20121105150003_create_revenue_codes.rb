class CreateRevenueCodes < ActiveRecord::Migration
  def change
    create_table :revenue_codes do |t|
      t.decimal :value, :precision => 4,  :scale => 2
      t.string  :name

      t.timestamps
    end
  end
end
