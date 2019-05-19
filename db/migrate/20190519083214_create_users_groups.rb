class CreateUsersGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :users_groups do |t|
      t.integer    :users_id, foreign_key: true
      t.integer    :groups_id, foreign_key: true
      t.timestamps
    end
  end
end
