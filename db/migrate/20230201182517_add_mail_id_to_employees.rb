class AddMailIdToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :mail_id, :string
  end
end
