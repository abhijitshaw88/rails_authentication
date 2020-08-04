class AlterRelation < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :user_id, :int
    remove_column :users, :profile_id
  end
end
