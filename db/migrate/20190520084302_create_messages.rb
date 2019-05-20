class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text        :body 
      t.string      :image
      t.references     :group_id, null:false, foreign_key:true
      t.references     :user_id, null:false, foreign_key:true
      t.timestamps
    end
  end
end
