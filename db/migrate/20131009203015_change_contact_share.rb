class ChangeContactShare < ActiveRecord::Migration
  def change
    change_column :contacts, :name, :string, :null => false
    change_column :contacts, :email, :string, :null => false
    change_column :contacts, :user_id, :integer, :null => false
  end
end
