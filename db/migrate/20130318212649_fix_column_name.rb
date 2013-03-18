class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :Jobs, :compay, :company
  end
end
