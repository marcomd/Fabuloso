class CreateLikers < ActiveRecord::Migration[5.0]
  def change
    create_table :likers do |t|
      t.integer :fable_id
      t.integer :user_id
      t.boolean :like

      t.timestamps
    end
  end
end
