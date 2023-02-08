class RemoveMailIdFromEmployee < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :mail_id, :string
  end
end
