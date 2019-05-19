class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string      :name, null:false
      t.integer     :user_id 
      # t.text        :body null:false  <= user_idとmessage_idで判断すれば良い
      t.integer     :group_id
      t.timestamps
    end

    add_index :users, :name, :string
    
  end
end
