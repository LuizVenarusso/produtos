class AddStatusToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :status, :boolean, default: true
  end
end
