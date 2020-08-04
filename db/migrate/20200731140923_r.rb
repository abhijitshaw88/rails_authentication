class R < ActiveRecord::Migration[5.2]
  def change

    remove_column :users, :profiles_id
    # remove_index :users, name: "index_users_on_profiles_id"
    add_reference :users , :profile
  end
end
