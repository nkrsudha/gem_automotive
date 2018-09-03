class ChangeFieldType < ActiveRecord::Migration[5.0]
  def change
  	change_column :sales, :diffrence, :float
  end
end
