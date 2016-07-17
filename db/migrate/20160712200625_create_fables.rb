class CreateFables < ActiveRecord::Migration[5.0]
  def change
    create_table :fables do |t|
      t.references :user, foreign_key: true
      t.string :name, limit: 60
      t.text :story
      t.string :summary, limit: 255
      t.integer :views
      t.integer :likes

      t.timestamps
    end
  end
end
