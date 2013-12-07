class ChangeColumnType < ActiveRecord::Migration
  def change
  
change_column :orders, :date, :date
  
  end
end








