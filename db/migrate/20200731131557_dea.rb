class Dea < ActiveRecord::Migration[5.2]
  def change
     add_reference :users, :profiles
  end
end
