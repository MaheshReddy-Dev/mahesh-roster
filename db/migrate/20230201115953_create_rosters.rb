class CreateRosters < ActiveRecord::Migration[7.0]
  def change
    create_table :rosters do |t|
      t.references :company, null: false, foreign_key: true
      t.date :roster_date

      t.timestamps
    end
  end
end
