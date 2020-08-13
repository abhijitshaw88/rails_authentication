class ChangeDataTypeForContact < ActiveRecord::Migration[5.2]
  def change
    change_column  :profiles, :contact, :string
  end
end
