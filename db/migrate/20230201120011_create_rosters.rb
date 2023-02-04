class CreateRosters < ActiveRecord::Migration[7.0]
  def change
    create_table :rosters do |t|
      t.date :roster_date
      t.integer :company_id

      t.timestamps
    end
  end
end
