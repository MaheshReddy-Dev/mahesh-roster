class AddSalaryToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :salary, :decimal
  end
end
