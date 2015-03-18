class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :movies, :user_id_id, :user_id
  end
end
