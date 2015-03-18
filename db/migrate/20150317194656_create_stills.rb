class CreateStills < ActiveRecord::Migration
  def change
    create_table :stills do |t|

      t.timestamps null: false
    end
  end
end
