class ChangeColumnNameSales < ActiveRecord::Migration[5.0]
  def change
  	 rename_column :sales, :dsicount, :discount
  	 change_column :sales, :notes, :text
  end
end
