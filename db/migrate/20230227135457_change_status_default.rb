class ChangeStatusDefault < ActiveRecord::Migration[7.0]
  def change
    change_column_default :equipment, :status, from: nil, to: false
  end
end
