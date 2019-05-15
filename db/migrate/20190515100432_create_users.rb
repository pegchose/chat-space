class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|

      t.timestamps
    end

    add_column :users, :name, :string
    
  end
end
