class CreateLeases < ActiveRecord::Migration[6.1]
  def change
    create_table :leases do |t|
      t.integer :rent
      t.integer :apartment
      t.integer :tenant
      t.timestamps
    end
  end
end 