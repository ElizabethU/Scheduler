class AddUserIdToExecs < ActiveRecord::Migration
  def change
    add_column :execs, :user_id, :integer
  end
end
