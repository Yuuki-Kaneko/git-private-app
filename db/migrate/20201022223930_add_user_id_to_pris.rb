class AddUserIdToPris < ActiveRecord::Migration[5.2]
  def change
    add_column :pris, :user_id, :integer
  end
end
